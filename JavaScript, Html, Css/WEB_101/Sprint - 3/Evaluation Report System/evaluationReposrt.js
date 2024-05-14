
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

    students_Detail.push(student_Date);
    console.table(students_Detail);

    students_Detail.forEach(function(){
        let box = document.querySelector("#container");
        
        let tr = document.createElement("tr");

        let td1 = document.createElement("td");
        let img = document.createAttribute("imgage");

        let td2 = document.createElement("td");
        td2.innerText = student_Date.name;

        let td3 = document.createElement("td");
        td3.innerText = student_Date.batch

        let td4 = document.createElement("td");
        td4.innerText = student_Date.dsa_Score;

        let td5 = document.createElement("td");
        td5.innerText = student_Date.skillathon_score;

        let td6 = document.createElement("td");
        td5.innerText = student_Date.coding_score;

        box.append(tr);
    });


    form.reset();
}