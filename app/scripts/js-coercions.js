;(function () {
    'use strict';

    var vals = [
            3,
            0,
            -Infinity,
            NaN,
            'Testing',
            '123',
            '',
            true,
            false,
            null,
            undefined,
            {},
            { a : 3 },
            [],
            [1, 2, 3],
            new Date,
            /123/
        ],
        coerce = {
            none    : id,
            number  : Number,
            boolean : Boolean,
            string  : String,
            object  : Object
        },
        tbody = document.querySelector('tbody#coercions');

    showVals('none');

    document.querySelector('select#choose-coercion').addEventListener('change', function (e) {
        showVals(e.target.value);
    });

    // id :: a -> a
    function id(x) { return x; }

    // showVals :: String -> undefined
    function showVals(coercion) {
        tbody.innerHTML = '';

        vals.map(function (v) {
            var tr = document.createElement('tr');

            [v, coerce[coercion](v)].map(function (val) {
                var td         = document.createElement('td');
                td.textContent = stringify(val);
                return td;
            }).forEach(function (td) {
                tr.appendChild(td);
            });

            return tr;
        }).forEach(function (r) {
            tbody.appendChild(r);
        });
    }

    // stringify :: a -> String
    function stringify(val) {
        return String(val).substr(0, 7) === '[object' || typeof val === 'string' || Array.isArray(val)
             ? JSON.stringify(val)
             : String(val);
    }
}());
