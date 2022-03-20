const imgDiv = document.querySelector('.profile-pic-div');
const img = document.querySelector('#photo');
const file = document.querySelector('#file');
const uploadBtn = document.querySelector('#uploadBtn');


const changeButton = document.querySelector("button");
const fname = document.getElementById('fname');
const lname = document.getElementById('lname');
const faculty_name = document.getElementById('faculty_name');
const position = document.getElementById('position');
const gender = document.getElementById('gender');
const dob = document.getElementById('dob');
const is_administrator = document.getElementById("is_administrator");

imgDiv.addEventListener('mouseenter', function(){
    uploadBtn.style.display = "block";
});


imgDiv.addEventListener('mouseleave', function(){
    uploadBtn.style.display = "none";
});

function buttonFunction(){
    alert ("Are you sure want to change?")
}

changeButton.addEventListener('click', e=> {
    e.preventDefault();
    changeData();
})


function changeData (){
    const fnameValue =fname.value.trim();
    const lnameValue =lname.value.trim();
    const genderValue =gender.value.trim();
    const dobValue =dob.value.trim();
    // const is_administratorValue = is_administrator.value.trim();
    const faculty_nameValue = faculty_name.value.trim();
    const positionValue = position.value.trim();
    console.log(fnameValue, lnameValue, genderValue, dobValue);
    fetch (`http://localhost:8080/api/employee/4/update`,{
        method:'PUT',
        headers: {
            'Content-Type': 'application/json',
        },
        body:JSON.stringify({
                FirstName: fnameValue,
                LastName: lnameValue,
                Gender: genderValue,
                DateOfBirth: dobValue,
                IsAdmin: false,
                FacultyName: faculty_nameValue,
                Position:positionValue
        })
    })
    .then(response => {
        return response.text();
    })
    .then (data => {
        console.log('Success:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    })
}

