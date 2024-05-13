
let form = document.querySelector("form");
form.addEventListener("submit", createTable);

let students_Detail = [];

function createTable(event){

    event.preventDefault();

    let student_Date = {
        img : document.querySelector("#image").value,
        name : document.querySelector("#name").value,
        batch : document.querySelector("#batch").value,
        dsa_Score : document.querySelector("#dsa_score").value,
        skillathon_score : document.querySelector("#skillathon_score").value,
        coding_score : document.querySelector("#coding_score").value,
    }



    // console.table(student_Date);
    students_Detail.push(student_Date);

    form.reset();
}