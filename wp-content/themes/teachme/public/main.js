document.addEventListener("DOMContentLoaded", () => {
    const tables = document.getElementsByClassName("table");

    [].forEach.call(tables, (table) => {
        radius(table);

        table.addEventListener("scroll", e => {
            radius(table);
        })
    })
})

function radius(table) {
    if (table.scrollLeft > 20) {
        table.style.setProperty("--radius", 0);
    } else {
        table.style.setProperty("--radius", `${20 - table.scrollLeft}px`);
    }
}
