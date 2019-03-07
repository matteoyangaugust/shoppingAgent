function SweetAlertAttribute(){
    this.width = undefined;
    this.openCallback = undefined;
    this.confirmCallback = undefined;
    this.cancelCallBack = undefined;
    this.callback = undefined;
    this.confirmButtonText = 'OK';
    this.cancelButtonText = 'Cancel';
    this.successText = 'info';

    this.$confirmBtn = undefined;

    this.setSuccess = function(isSuccess){
        if(isSuccess){
            this.successText = 'success';
        }else{
            this.successText = 'error';
        }
    }
}