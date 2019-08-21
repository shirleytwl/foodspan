window.onload = function() {
    let groceryItems = document.querySelectorAll("#grocery-table .grocery-item .grocery-edit-btn");
    groceryItems.forEach(function(item) {
        console.log("test");
        item.addEventListener("click", function(event){
            console.log("clicked");
            $('#grocery-edit').modal('show');
            $('#grocery-edit .modal-body').load("/grocery/"+this.dataset.ingredient+"/edit");
        })
    });
};