const form = document.getElementById("newCourse");
const course_name = document.getElementById("course_name");
const teacher_first_name = document.getElementById("teacher_first_name");
const teacher_last_name  = document.getElementById("teacher_last_name");
const course_type = document.getElementById("course_type");
const academic_semester = document.getElementById("academic_semester");
const semester_number = document.getElementById("semester_number");
const academic_year = document.getElementById("academic_year");
const year_of_study = document.getElementById("year_of_study");
const total_hours = document.getElementById("total_hours");
const total_credits = document.getElementById("total_credits");
const duration = document.getElementById("duration");
const date_start = document.getElementById("date_start");
const date_end = document.getElementById("date_end");
const day = document.getElementById("day");
const department_name = document.getElementById("department_name");
const course_mode_stationary = document.querySelector("course_mode_stationary");
const meeting_link =document.getElementById("meeting-link")
const password = document.getElementById("psw")
const classroom_num = document.getElementById("classroom-numb")
const building_name = document.getElementById("building_name")




form.addEventListener('submit', e => {
    e.preventDefault();
    course();
});

function course() {
    const course_nameValue = course_name.value.trim();
    const teacher_first_name_Value = teacher_first_name.value.trim();
    const teacher_last_name_value = teacher_last_name.value.trim();
    const course_typeValue =course_type.value.trim();
    const academic_semesterValue = academic_semester.value.trim();
    const semester_numberValue = semester_number.value.trim();
    const academic_yearValue = academic_year.value.trim();
    const year_of_studyValue = year_of_study.value.trim();
    const total_hoursValue = total_hours.value.trim();
    const total_creditsValue = total_credits.value.trim();
    const durationValue =duration.value.trim();
    const date_startValue =date_start.value.trim();
    const date_endValue = date_end.value.trim();
    const dayValue = day.value.trim();
    const department_nameValue = department_name.value.trim();
    const course_mode_value = ($('input[name=course_mode_stationary]:checked').length > 0) ? 'Stationary' : 'Online';
    const link_meeting_value = meeting_link.value.trim();
    const password_value = password.value.trim();
    const class_number_value = classroom_num.value.trim();
    const building_name_value = building_name.value.trim();






    if (department_nameValue === '') {
        setErrorFor(department_name, 'Department name cannot be blank');
    }else {
        setSuccessFor(department_name);
    }


    if (course_nameValue === '') {
        setErrorFor(course_name, 'Course name cannot be blank');
    }else {
        setSuccessFor(course_name);
    }


    if (course_typeValue === '') {
        setErrorFor(course_type, 'Course type cannot be blank');
    }else {
        setSuccessFor(course_type);
    }

    if (academic_semesterValue === '') {
        setErrorFor(academic_semester, 'Academic semester cannot be blank');
    }else {
        setSuccessFor(academic_semester);
    }

    if (semester_numberValue === '') {
        setErrorFor(semester_number, 'Semester number cannot be blank');
    }else {
        setSuccessFor(semester_number);
    }

    if (academic_yearValue === '') {
        setErrorFor(academic_year, 'Academic year cannot be blank');
    }else {
        setSuccessFor(academic_year);
    }

    if (year_of_studyValue === '') {
        setErrorFor(year_of_study, 'Year of study cannot be blank');
    }else {
        setSuccessFor(year_of_study);
    }

    if (total_hoursValue === '') {
        setErrorFor(total_hours, 'Total hours cannot be blank');
    }else {
        setSuccessFor(total_hours);
    }

    if (total_creditsValue === '') {
        setErrorFor(total_credits, 'Total hours cannot be blank');
    }else {
        setSuccessFor(total_hours);
    }


    if (durationValue === '') {
        setErrorFor(duration, 'Duration cannot be blank');
    }else {
        setSuccessFor(duration);
    }

    if (date_startValue === '') {
        setErrorFor(date_start, 'Date start cannot be blank');
    }else {
        setSuccessFor(date_start);
    }

    if (date_endValue === '') {
        setErrorFor(date_end, 'Date end cannot be blank');
    }else {
        setSuccessFor(duration);
    }

    if (dayValue === '') {
        setErrorFor(day, 'Day cannot be blank');
    }else {
        setSuccessFor(day);
    }
    fetch(`http://localhost:8080/api/employee/1/courses/newcourse`, {
        method:'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({

            CourseName: course_nameValue,
            TeacherFirstName: teacher_first_name_Value,
            TeacherLastName: teacher_last_name_value,
            CourseType:course_typeValue,
            AcademicSemester:academic_semesterValue,
            SemesterNumber:semester_numberValue,
            AcademicYear:academic_yearValue,
            YearOfStudy:year_of_studyValue,
            TotalHours:total_hoursValue,
            CourseCredits:total_creditsValue,
            Duration: durationValue,
            DateStart:date_startValue,
            DateEnd:date_endValue,
            Day: dayValue,
            DepartmentName: department_nameValue,
            CourseMode: course_mode_value,
            LinkMeeting: link_meeting_value,
            Password: password_value,
            ClassRoomNumber: class_number_value,
            BuildName: building_name_value

        })
    })
    .then(response => response.json())
    .then(data => {
    console.log('Success:', data);
    })
    .catch((error) => {
    console.error('Error:', error);
    })



}

// function checkButton(){
    
    

// }

function setErrorFor(input, message) {
    const inputGroup = input.parentElement ;
    const errorMessage = inputGroup.querySelector("small");

    errorMessage.innerText = message;
    inputGroup.className = "input-group error";
}

function setSuccessFor(input) {
    const inputGroup = input.parentElement;
    inputGroup.className = "input-group success"
}

document.getElementById("meeting-link").disabled=true;
document.getElementById("psw").disabled=true;
$("input[type=radio][name='rad_group_mode']").change(function(){
    // console.log(this)

    //alert("Changed")
    if ($(this).val() == 1) {
        document.getElementById("classroom-numb").disabled=true;
        document.getElementById("building_name").disabled=true;
        document.getElementById("meeting-link").disabled=false;
        document.getElementById("psw").disabled=false;
    }
    else {
        document.getElementById("classroom-numb").disabled=false;
        document.getElementById("building_name").disabled=false;
        document.getElementById("meeting-link").disabled=true;
        document.getElementById("psw").disabled=true;
    }
})

