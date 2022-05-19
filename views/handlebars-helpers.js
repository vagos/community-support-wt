const handlebars = require('handlebars');
const util = require("../controllers/util");

exports.ifeq = (a, b, options) => {
    if (a === b) { return options.fn(this); }
    return options.inverse(this);
};

exports.randomColor = (value) => {
    return util.getRandomColorRGB(value);
};
