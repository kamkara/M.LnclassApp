let monthly = document.getElementById("monthly");
let annually = document.getElementById("annually");

let flag = false;
const toggleIt = () => {
    if (!flag) {
        monthly.classList.add("bg-indigo-700");
        monthly.classList.add("text-white");
        monthly.classList.remove("bg-gray-100");
        monthly.classList.remove("text-gray-600");
        annually.classList.remove("bg-indigo-700");
        annually.classList.remove("text-white");
        annually.classList.add("bg-gray-100");
        annually.classList.add("text-gray-600");
        flag = true;
    } else {
        monthly.classList.remove("bg-indigo-700");
        monthly.classList.remove("text-white");
        monthly.classList.add("bg-gray-100");
        monthly.classList.add("text-gray-600");
        annually.classList.add("bg-indigo-700");
        annually.classList.add("text-white");
        annually.classList.remove("bg-gray-100");
        annually.classList.remove("text-gray-600");
        flag = false;
    }
};