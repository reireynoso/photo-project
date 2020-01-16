const newPicForm = document.querySelector('#new-pic-form');
const imageField = document.querySelector('#image');

const editPicForm = document.querySelector('#edit-pic-form');

const commentsList = document.querySelector('#comments');

const photoShow = document.querySelector('#photo-show');
const titleShow = document.querySelector('#titleShow');
const descriptionShow = document.querySelector('#descriptionShow');
const likesShow = document.querySelector('#likesShow');
const imageShow = document.querySelector('#imageShow');
const uploadedBy = document.querySelector('#uploadedBy');

const newCommentForm = document.querySelector('#newCommentForm')
const genreSelect = document.querySelector('#genre');

let currentGenre = null;
let updateAttr = null;
let imageURL = null;

document.addEventListener('DOMContentLoaded',function(){
    console.log('loaded');
    newPicForm.addEventListener('submit',post)
    editPicForm.addEventListener('submit',update)
    newCommentForm.addEventListener('submit',newComment);
    loadFeatured();
    
    var elemsPar = document.querySelectorAll('.parallax');
    var instancesPar = M.Parallax.init(elemsPar,0);
    
    //carousel
    var elemsCar = document.querySelectorAll('.carousel');
    var instancesCar = M.Carousel.init(elemsCar, 200);
    //modal
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems, 0.5);
    // loadMostLiked();
    loadGenres();
    
    imageField.addEventListener('change', function(e){
        const CLOUDINARY_URL = 'https://api.cloudinary.com/v1_1/dbajnnylp/image/upload';
        const CLOUDINARY_UPLOAD_PRESET = 'hh06wty3';
        let file = event.target.files[0];
        let formData = new FormData();
        formData.append('file',file);
        formData.append('upload_preset',CLOUDINARY_UPLOAD_PRESET);
        fetch(CLOUDINARY_URL, {
            method: "POST",
            body: formData,
        })
        .then(resp => resp.json())
        .then(data => {
            // console.log(data.url)
            imageURL = data.url
        })
    })
})

// function loadMostLiked(){
//     fetch('https://photo-uploader-api.herokuapp.com/photos/most_liked')
//     .then(resp => resp.json())
//     .then(data => {
//         console.log(data[data.length - 1])
//     })
// }

function newComment(e){
    e.preventDefault()
    const newCommentField = document.querySelector('#newComment');
    const newOwnerField = document.querySelector('#newCommentOwner')
    fetch(`https://photo-uploader-api.herokuapp.com/genres/${currentGenre.id}/photos/${currentPhoto.id}/comments`,{
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
        },
        body: JSON.stringify({
            content: newCommentField.value,
            owner_name: newOwnerField.value,
            photo: currentPhoto.id            
        })
    })
    .then(resp => resp.json())
    .then(data => {
        generateCommentElements(data) 
    })
    newCommentForm.reset();
}

function loadFeatured(){
    let featureOne = document.querySelector('#one');
    let featureTwo = document.querySelector('#two');
    let featureThree = document.querySelector('#three');
    let featureFour = document.querySelector('#four');
    let featureFive = document.querySelector('#five');
    const allPhotos = fetch('https://photo-uploader-api.herokuapp.com/photos/')
    .then(resp => resp.json())
    .then(data => {
        //  console.log(data[data.length])
        featureOne.src = data[randomGenerator(data.length-1)].image
        featureTwo.src = data[randomGenerator(data.length-1)].image
        featureThree.src = data[randomGenerator(data.length-1)].image
        featureFour.src = data[randomGenerator(data.length-1)].image
        featureFive.src = data[randomGenerator(data.length-1)].image
    })
}

function randomGenerator(length){
    let random = Math.ceil(Math.random() * length)
    return random
}

function loadGenres(){
    fetch('https://photo-uploader-api.herokuapp.com/genres')
    .then(resp => resp.json())
    .then(data => {
        // console.log(data)
        data.forEach(genre => {
            generateNavLinks(genre);
            generateGenreChoice(genre);
        })   
    })
}

function generateGenreChoice(genre){
    let option = document.createElement('option');
    option.value = genre.id
    option.innerText = genre.name
    genreSelect.appendChild(option);
}

function generateNavLinks(genre){
    let ulLinks = document.querySelector('#links');
    let li = document.createElement('li')
    let a = document.createElement('a')
    a.innerText = genre.name
    li.appendChild(a);
    // a.href = "#categoryPhotos"
    li.addEventListener('click',function(){
        const category = document.getElementById('category');
        const addImage = document.querySelector('#addPhoto');
        //console.log(category)
        const categoryPhotos = document.getElementById('categoryPhotos');
        addImage.style.visibility = "visible";
        currentGenre = genre;
        photoShowRow.innerHTML = "";
        category.innerText = genre.name
        loadPhotos();
        categoryPhotos.scrollIntoView();
    })

    ulLinks.appendChild(li);
}

function loadPhotos(){
  
    fetch(`https://photo-uploader-api.herokuapp.com/genres/${currentGenre.id}`)
    .then(resp => resp.json())
    .then(data => {
        data.photos.forEach(photo => {
            //generateElements(photo)
            genEl(photo)
            //console.log(photo);
        })
    })
}
const photoShowRow = document.querySelector('.row')
let currentPhoto = null;
let titleElement = null;
function genEl(photo){

    let cardContainer = document.createElement('div');
    cardContainer.className = "col s4 container"
    let card = document.createElement('div');
    card.className = "card small";

        let cardImage = document.createElement('div');
        cardImage.className = 'card-image';
            let modalFunc = document.createElement('a')
            modalFunc.className = "waves-effect waves-light btn modal-trigger"
            modalFunc.href = '#modal1';
            modalFunc.style.height = '100%';
            modalFunc.style.width = '100%';
            let photoImage = document.createElement('img');
            photoImage.src = photo.image;
            photoImage.style.height = '180px';
            photoImage.style.width = '100%';

            //modal contents
            photoImage.addEventListener('click',function(){
                imageShow.src = photo.image;
                imageShow.style.height = '300px';
                imageShow.style.width = '500px';
                titleShow.innerText = `Title: ${photo.title}`;
                descriptionShow.innerText = `Description: ${photo.description}`;
                likesShow.innerText = `Current Likes: ${photo.likes}`;
                uploadedBy.innerText = `Uploaded By: ${photo.owner_name}`
                currentPhoto = photo;
                loadComments(photo.id);
            }) 
            modalFunc.appendChild(photoImage);
        cardImage.appendChild(modalFunc);
  
        let cardContent = document.createElement('div');
        cardContent.className = 'card-content'
            let title = document.createElement('p');
            title.className = "card-title";
            title.innerText = photo.title;
            let likes = document.createElement('button');
            likes.innerText = `${photo.likes} ♥️`
            likes.addEventListener('click', function(){
                photo.likes = photo.likes + 1
                likes.innerText = `${photo.likes} ♥️`
                updateLikes(photo.id, photo.likes)
            })
            let remove = document.createElement('button')
            remove.innerText = "Delete"
            remove.addEventListener('click',function(){
             
                removePhoto(photo.id);
                card.remove();
            })
            let edit = document.createElement('button')
            edit.innerText = "Edit";
            let modalFuncEdit = document.createElement('a')
            modalFuncEdit.className = "modal-trigger"
            modalFuncEdit.href = '#modal3';
            modalFuncEdit.appendChild(edit);
            edit.addEventListener('click',function(){
                // console.log(photo);
                let editTitle = document.querySelector('#editTitle');
                let editDescription = document.querySelector('#editDescription');
                updateAttr = photo;
                titleElement = title;
                editTitle.value = photo.title;
                editDescription.value = photo.description;

            })
        cardContent.appendChild(title);
        cardContent.appendChild(likes);
        cardContent.appendChild(remove);
        cardContent.appendChild(modalFuncEdit);
    card.appendChild(cardImage);
    card.appendChild(cardContent);
    cardContainer.appendChild(card)
    photoShowRow.appendChild(cardContainer);
   
}
function loadComments(id){
    commentsList.innerHTML = "";
    fetch(`https://photo-uploader-api.herokuapp.com/genres/${currentGenre.id}/photos/${id}`)
    .then(resp => resp.json())
    .then(data => {
        data.comments.forEach(comment => {
            generateCommentElements(comment);
        })
    })
}

function generateCommentElements(comment){
    let otherli = document.createElement('li');
    otherli.innerText = `"${comment.content}" - ${comment.owner_name}`
    commentsList.append(otherli);   
}

function updateLikes(id,likes){
    fetch(`https://photo-uploader-api.herokuapp.com/genres/${currentGenre.id}/photos/${id}`,{
        method: "PATCH",
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
        },
        body: JSON.stringify({
            likes: likes 
        })
    })
}

function update(e){
    e.preventDefault();
     fetch(`https://photo-uploader-api.herokuapp.com/genres/${currentGenre.id}/photos/${updateAttr.id}`,{
        method: "PATCH",
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
        },
        body: JSON.stringify({
            title: editTitle.value,
            description: editDescription.value,
            // likes: updateAttr.likes,
            // genre: currentGenre.id,
            // image: updateAttr.image,
            // owner_name: updateAttr.owner_name
        })
    })
    .then(resp => resp.json())
    .then(data => {
        // generateElements(data)
        //console.log(data);
        //titleElement.innerText = data.title
        photoShowRow.innerHTML = "";
        loadPhotos();
    })
    editPicForm.reset();
}

function removePhoto(id){
    fetch(`https://photo-uploader-api.herokuapp.com/genres/10/photos/${id}`,{
        method: "DELETE"
    })
}

function post(e){
    e.preventDefault();
    const titleField = document.querySelector('#title');
    const descField = document.querySelector('#description');
    const imageField = document.querySelector('#image');
    const ownerField = document.querySelector('#owner');
    const genreField = document.querySelector('#genre');
    // console.log(genreSelect.value);
     fetch(`https://photo-uploader-api.herokuapp.com/genres/${genreSelect.value}/photos`,{
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
        },
        body: JSON.stringify({
            title: titleField.value,
            description: descField.value,
            likes: 0,
            genre: genreSelect.value, 
            image: imageURL,
            owner_name: ownerField.value
        })
    })
    .then(resp => resp.json())
    .then(data => {
        genEl(data) 
    })
    newPicForm.reset();
}
