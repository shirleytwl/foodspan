window.onload = function() {
    $('#storage-add').on('shown.bs.modal', function (e) {
        $('#storage-purchased-date').datepicker('update', new Date());
        $('#storage-expiry-date').datepicker('update', new Date());
        calculateExpiryDays($('#add-storage-purchased-date'),$('#add-storage-expiry-date'),$('#add-storage-expiry-days'));
    })
    $('#add-storage-purchased-date').datepicker().on('changeDate', function (ev) {
        calculateExpiryDays();
    });
    $('#add-storage-expiry-date').datepicker().on('changeDate', function (ev) {
        calculateExpiryDays();
    });
    let storageItems = document.querySelectorAll("#storage-table .storage-item");

    storageItems.forEach(function(item) {
      item.addEventListener("click",function(event){
        $('#storage-edit').modal('show');
        $('#storage-edit .modal-body').load("/storage/"+this.dataset.ingredient+"/edit", function() {
            calculateExpiryDays($('#edit-storage-purchased-date'),$('#edit-storage-expiry-date'),$('#edit-storage-expiry-days'));
        });

      })
    });
};

function calculateExpiryDays (start, end, displayResult){
    let startDate = new Date(start.val());
    let endDate = new Date(end.val());
    let difference = Math.floor((endDate - startDate) / (1000*60*60*24))
    displayResult.val(difference);
}