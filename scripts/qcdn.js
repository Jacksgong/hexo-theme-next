'use strict';
var cheerio = require('cheerio');
var cdnUrl = "https://qcdn.dreamtobe.cn";
var oldsrc = '';
function stringStartsWith(string, prefix) {
    return string.slice(0, prefix.length) == prefix;
}
function lazyloadImg(source) {
    var $ = cheerio.load(source, {
        decodeEntities: false
    });
    $('img').each(function(index, element) {
        oldsrc = $(element).attr('src');
        if (oldsrc && stringStartsWith(oldsrc, '/img/') && !$(element).hasClass('qcdn') && !$(element).hasClass('skip')) {
            $(element).addClass('qcdn');
            $(element).attr({
                src: cdnUrl + oldsrc
            });
        }
    });
    return $.html();
}
hexo.extend.filter.register('after_render:html', lazyloadImg);
