(function() {

    // Selectors

    var btn = {
        grid: document.getElementById("btn-grid"),
        list: document.getElementById("btn-list"),
        search: document.getElementById("search")
    };

    var about = document.getElementById("about-counter"),
        detail = document.getElementById("detail"),
        preview = document.getElementById("preview"),
        searchResult = document.getElementById("search-result"),
        thumbs = [].slice.call(preview.getElementsByClassName("icon-item"));

    // Update the counter:
    about.firstChild.textContent = thumbs.length + "";

    // Controllers

    function detailHandler(ev) {
        var elem = ev.target,
            found = false;

        [].slice.call(preview.getElementsByClassName("overview")).forEach(function(elem) {
            elem.classList.remove("overview");
            elem.className = "icon-item";
        });

        while(elem !== preview) {
            if (elem.hasAttribute("data-name")) {
                found = true;
                break;
            }
            elem = elem.parentNode;
        }
        if (found) {
            elem.className += " overview";
            elem.scrollIntoView(true);
        }
    }

    function gridHandler() {
        preview.className = "grid";
    }

    function listHandler() {
        preview.className = "list";
    }

    function searchHandler(ev) {
        // dispatch to double click event:
        var thumb = preview.querySelector(
            "[data-name=" +
            document.getElementById("search-input").value || "" +
            "]"
        );
        if (thumb) {
            detailHandler({ target: thumb });
        }
        // stop the action
        ev.preventDefault();
        return false;
    }

    // Listeners
    btn.grid.addEventListener("click", gridHandler);
    btn.list.addEventListener("click", listHandler, true);
    btn.search.addEventListener("submit", searchHandler, false);

    thumbs.forEach(function(thumb) {
        thumb.addEventListener("click", detailHandler);
        //thumb.addEventListener("touchend", detailHandler);
    });

})();
