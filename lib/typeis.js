module.exports = function type(variable) {
    var result = {};
    var toString = Object.prototype.toString;
    var is = {};

    [ 
        'Number', 'String', 'Boolean', 'Function',
        'Array', 'RegExp', 'Date', 'Object'
    ].forEach(function (type) {
            var method = type === 'Function' ? 'func' : type.toLowerCase();
            is[method] = function () {
                return toString.call(variable) === '[object ' + type + ']';
            }
        });

    result.is = {
        number: is.number(),
        string: is.string(),
        bool: is.boolean(),
        func: is.func(),
        array: is.array(),
        re: is.regexp(),
        date: is.date(),
        object: is.object()
    };

    return result;
};
