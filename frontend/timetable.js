
// import * as fetch  from 'node-fetch'
//
// const timetable = document.getElementById("button");
//
// timetable.addEventListener('submit', e=> {
//     e.preventDefault();
//     saveTimetable();
// })
//
// function saveTimetable(){
//     fetch(`http://localhost:8080/api/student/7/schedule`)
//     .then(function(response) {
//         return response.json();
//     })
//     .then(data => {
//         console.log('Success:', data);
//     })
//     .catch((error) => {
//         console.error('Error:', error);
//     })
// }
// saveTimetable()


// document.getElementById("button").addEventListener('submit', function() {
//     fetch(`http://localhost:8080/api/student/7/schedule`)
//     .then(function(response) {
//         return response.json();
//     })
//     .then(data => {
//         console.log('Success:', data);
//     })
//     .catch((error) => {
//         console.error('Error:', error);
//     })

// });


// class APIService {
//     getID(){
//         return fetch('http://localhost:8000/student/7/schedule',{
//             method: 'get',
//                 headers: {
//                 'Accept': 'application/json, text/plain, */*',
//                 'Content-Type': 'application/json',
//                 },
//                 'credentials': 'same-origin'
//         })
//         .then(res => res.json());
//     }

// }
// export default new APIService();'

fetch(`http://localhost:8080/api/student/7/schedule`)
    .then(response => response.json())
    .then(data => {
        console.log('Success:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    })