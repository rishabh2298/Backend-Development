
let form = document.querySelector("form");
form.addEventListener("submit", createTable);

let students_Detail = [];

function createTable(event){

    event.preventDefault();
    
    let box = document.querySelector("#container");
    box.innerHTML = ""; 

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

        let tr = document.createElement("tr");

        let td1 = document.createElement("td");
        let img = document.createElement("img");
        img.setAttribute("src",student_Date.img);
        td1.append(img);

        let td2 = document.createElement("td");
        td2.innerText = student_Date.name;

        let td3 = document.createElement("td");
        td3.innerText = student_Date.batch

        let td4 = document.createElement("td");
        td4.innerText = student_Date.dsa_Score;

        let td5 = document.createElement("td");
        td5.innerText = student_Date.skillathon_score;

        let td6 = document.createElement("td");
        td6.innerText = student_Date.coding_score;

        let td7 = document.createElement("td");
        let percentage = (Number(student_Date.dsa_Score) + Number(student_Date.skillathon_score) + Number(student_Date.coding_score))/30 * 100;
        td7.innerText = percentage.toFixed(3) + " %";

        let td8 = document.createElement("td");
        if(percentage <= 50){
            td8.innerText = "ASYNC";
            td8.style.backgroundColor = "red";
        }
        else{
            td8.innerText = "REGULAR";
            td8.style.backgroundColor = "green";
        }
        td8.style.color = "white";

        tr.append(td1,td2,td3,td4,td5,td6,td7,td8);
        box.append(tr);
    });


    form.reset();
}