window.onload = function() {
    let groceryItems = document.querySelectorAll("#grocery-table .grocery-item");
        groceryItems.forEach(function(item) {
            item.addEventListener("click", function(event){
                $('#grocery-edit').modal('show');
                $('#grocery-edit .modal-body').load("/grocery/"+this.dataset.ingredient+"/edit");
            })
        });
};