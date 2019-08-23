window.onload = function() {

    $('#groceries-storages-add').on('shown.bs.modal', function (e) {
        let addGroceryStorageExpiryDates =$(".add-grocery-storage-expiry-date");
        addGroceryStorageExpiryDates.each(function (index){
            $(this).datepicker('update', new Date());

            $(this).datepicker().on('changeDate', function (e) {
                let datesToDays =$("#add-grocery-storage-expiry-days-"+index);
                calculateExpiryFromDate($(this).val(),datesToDays);
            });
        })

        let addGroceryStorageExpiryDays =$(".add-grocery-storage-expiry-days");
        addGroceryStorageExpiryDays.each(function (index){
            $(this).on('change', function(e) {
                let daysToDate =$("#add-grocery-storage-expiry-date-"+index);
                calculateExpiryFromDays(e.target.value,daysToDate);
            });
        })
    });

    let groceryItems = document.querySelectorAll("#grocery-table .grocery-item .grocery-edit-btn");
    groceryItems.forEach(function(item) {
        item.addEventListener("click", function(event){
            $('#grocery-edit').modal('show');
            $('#grocery-edit .modal-body').load("/grocery/"+this.dataset.ingredient+"/edit");
        })
    });

    $(".check_box").change(function(){
        this.form.submit();
    })
};

function calculateExpiryFromDate (expireDate, displayResult){
    let difference = Math.floor((new Date(expireDate).setHours(0,0,0,0)-new Date().setHours(0,0,0,0)) / (1000*60*60*24));
    displayResult.val(difference);
}

function calculateExpiryFromDays (expireDays, displayResult){
    let expireDate = new Date();
    expireDate.setDate(expireDate.getDate() + parseInt(expireDays));
    displayResult.datepicker('update', new Date(expireDate));
}

$(document).ready(function(){
    $("#grocery-search").on("keyup", function() {
          var value = $(this).val().toLowerCase();
      $("#grocery-table-body tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
          });
    });
  });