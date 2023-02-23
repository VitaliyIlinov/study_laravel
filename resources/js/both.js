ajaxSend = (data) => {
    var options = $.extend(true, {
        dataType: 'json',
        method: 'post',
        url: '',
        data: {},
        success: function (data) {
            toastr.success(data);
        },
        error: function (e) {
            toastr.error(e.responseJSON.message, 'Error', {timeOut: 3500});
        }
    }, data);

    $.ajax(options);
}
localStorageDB = (dbPrefix) => {

    return {
        dbPrefix: dbPrefix,
        save(key, value) {
            let _value = JSON.stringify(value);
            localStorage.setItem(this.dbPrefix + key, _value);
            return true;
        },
        fetch(key) {
            let data = localStorage.getItem(this.dbPrefix + key);
            if (data === null) {
                return false;
            }
            let _data = false;
            try {
                _data = JSON.parse(data);
            } catch (e) {
                console.error(e);
            }
            return _data;
        },
        delete(key, withPrefix = true) {
            localStorage.removeItem(withPrefix ? this.dbPrefix + key : key);
        },
        rowsCount() {
            return localStorage.length;
        },
        drop() {
            const rowsCount = this.rowsCount();
            for (let i = 0; i < rowsCount; i++) {
                let key = localStorage.key(i);
                if (key !== null && key.startsWith(this.dbPrefix)) {
                    this.delete(key, false);
                }
            }
        },
        dropAll() {
            localStorage.clear();
        }
    };

}

animateCSS = (element, animation, prefix = 'animate__') => {
    const animationName = `${prefix}${animation}`;

    element.addClass(`${prefix}animated ${animationName}`);

    element.on("animationend", function () {
        element.removeClass(`${prefix}animated ${animationName}`);
    })
};
