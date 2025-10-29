document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelectorAll('form[action="options.php"]') ;
    if (!form.length) return;

    const textarea = document.getElementById('tt_textarea');
    const editor = document.getElementById('tt_table_editor');

    let initial = [['']];
    try { 
        initial = textarea.value ? JSON.parse(textarea.value) : [['']]; 
    }
    catch(e) { 
        initial = [['']]; 
    }

    var hot = new Handsontable(editor, {
        data: initial,
        colHeaders: true,
        rowHeaders: true,
        minSpareRows: 1,
        stretchH: 'all',
        height: 300,
        contextMenu: true,
        licenseKey: 'non-commercial-and-evaluation'
    });

    hot.addHook('afterChange', saveData);
    hot.addHook('afterCreateRow', saveData);
    hot.addHook('afterRemoveRow', saveData);
    hot.addHook('afterCreateCol', saveData);
    hot.addHook('afterRemoveCol', saveData);

    function saveData() {
        console.log("edit");
        var data = hot.getData(); 
        textarea.value = JSON.stringify(data);
    }
});

