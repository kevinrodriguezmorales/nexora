window.onload = function () {
    let userSummary = document.getElementById("userSummaryElement");
    let deployButton = document.getElementById("userDeployElement");
    let iconDeployButton = document.querySelector(".user-deploy .material-icons");
    
    deployButton.addEventListener('click', () => {
        userSummary.classList.toggle("deploy");
        iconDeployButton.classList.toggle("user-deploy-animation");
    });
    
    document.getElementById("innerWindow").src = "Controller?menu=DashboardView";
};

