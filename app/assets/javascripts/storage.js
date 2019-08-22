window.onload = function() {
    let addStoragePurchasedDate = $('#add-storage-purchased-date');
    let addStorageExpiryDate = $('#add-storage-expiry-date');
    let addStorageExpiryDays = $('#add-storage-expiry-days');

    $('#storage-add').on('shown.bs.modal', function (e) {
        console.log(addStoragePurchasedDate)
        addStoragePurchasedDate.datepicker('update', new Date());
        addStorageExpiryDate.datepicker('update', new Date());
        calculateExpiryFromDate(addStorageExpiryDate.val(),addStorageExpiryDays);
    })
    addStorageExpiryDate.datepicker().on('changeDate', function (e) {
        calculateExpiryFromDate(addStorageExpiryDate.val(),addStorageExpiryDays);
    });

    addStorageExpiryDays.on('change',function(e){
        calculateExpiryFromDays(e.target.value,addStorageExpiryDate)
    });

    let storageItems = document.querySelectorAll("#storage-table .storage-item .storage-edit-btn");

    storageItems.forEach(function(item) {
      item.addEventListener("click",function(event){
        let ingredientId = this.dataset.ingredient;
        $('#storage-qty-edit').modal('show');
        $('#storage-qty-edit .modal-body').load("/storage/"+ingredientId+"/editqty", function() {
            let editStorageQuantity = $("#edit-storage-quantity");
            let editStorageQuantityDisplay = $("#edit-storage-quantity-display");
            let editStorageBtn = $("#storage-edit-btn");
            let deleteStorageBtn = $("#storage-delete-btn");
            let deleteStorageModal = $("#confirm-storage");
            let deleteStorageModalOverlay = $("#confirm-storage-overlay");
            editStorageQuantity.on("change", function(e){
                editStorageQuantityDisplay.text(e.target.value);
                $("#remove_storages").val(e.target.value);
            })
            editStorageBtn.on("click", function(e){
                $('#storage-qty-edit').modal('hide');
                $('#storage-edit').modal('show');
                $('#storage-edit .modal-body').load("/storage/"+ingredientId+"/edit", function() {
                    let editStoragePurchasedDate = $('#edit-storage-purchased-date');
                    let editStorageExpiryDate = $('#edit-storage-expiry-date');
                    let editStorageExpiryDays = $('#edit-storage-expiry-days');
                    calculateExpiryFromDate(editStorageExpiryDate.val(),editStorageExpiryDays);
                    editStorageExpiryDate.datepicker().on('changeDate', function (ev) {
                        calculateExpiryFromDate(editStorageExpiryDate.val(),editStorageExpiryDays);
                    });
                    editStorageExpiryDays.on('change',function(e){
                        calculateExpiryFromDays(e.target.value,editStorageExpiryDate)
                    });
                });
            })
            deleteStorageBtn.on("click",function(e){
                deleteStorageModal.fadeIn();
                deleteStorageModalOverlay.fadeIn();
            })
            deleteStorageModalOverlay.on("click",function(e){
                deleteStorageModal.fadeOut();
                deleteStorageModalOverlay.fadeOut();
            })

        });


      })
    });

    $("#add-storage-tags").tokenfield();

    // $.ajax({
    //     type: "GET",
    //     dataType: "json",
    //     url: "/storage",
    //     success: function(data){

    //         var tagArray = [];

    //         data.forEach(function(tag){
    //             tagArray.push(tag.name)
    //         })

    //         $('#add-storage-tags').tokenfield({
    //             autocomplete: {
    //               source: tagArray,
    //               delay: 100
    //             },
    //             showAutocompleteOnFocus: true
    //           })
    //     }
    // });


    function calculateExpiryFromDate (expireDate, displayResult){
        let difference = Math.floor((new Date(expireDate).setHours(0,0,0,0)-new Date().setHours(0,0,0,0)) / (1000*60*60*24));
        displayResult.val(difference);
    }

    function calculateExpiryFromDays (expireDays, displayResult){
        let expireDate = new Date();
        expireDate.setDate(expireDate.getDate() + parseInt(expireDays));
        displayResult.datepicker('update', new Date(expireDate));
    }
}