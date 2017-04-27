<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Asciidoctor 1.5.5">
<title>REST API documentation</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700">
<style>
/* Asciidoctor default stylesheet | MIT License | http://asciidoctor.org */
/* Remove comment around @import statement below when using as a custom stylesheet */
/*@import "https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700";*/
article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block}
audio,canvas,video{display:inline-block}
audio:not([controls]){display:none;height:0}
[hidden],template{display:none}
script{display:none!important}
html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}
a{background:transparent}
a:focus{outline:thin dotted}
a:active,a:hover{outline:0}
h1{font-size:2em;margin:.67em 0}
abbr[title]{border-bottom:1px dotted}
b,strong{font-weight:bold}
dfn{font-style:italic}
hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0}
mark{background:#ff0;color:#000}
code,kbd,pre,samp{font-family:monospace;font-size:1em}
pre{white-space:pre-wrap}
q{quotes:"\201C" "\201D" "\2018" "\2019"}
small{font-size:80%}
sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}
sup{top:-.5em}
sub{bottom:-.25em}
img{border:0}
svg:not(:root){overflow:hidden}
figure{margin:0}
fieldset{border:1px solid silver;margin:0 2px;padding:.35em .625em .75em}
legend{border:0;padding:0}
button,input,select,textarea{font-family:inherit;font-size:100%;margin:0}
button,input{line-height:normal}
button,select{text-transform:none}
button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}
button[disabled],html input[disabled]{cursor:default}
input[type="checkbox"],input[type="radio"]{box-sizing:border-box;padding:0}
input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box}
input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none}
button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}
textarea{overflow:auto;vertical-align:top}
table{border-collapse:collapse;border-spacing:0}
*,*:before,*:after{-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box}
html,body{font-size:100%}
body{background:#fff;color:rgba(0,0,0,.8);padding:0;margin:0;font-family:"Noto Serif","DejaVu Serif",serif;font-weight:400;font-style:normal;line-height:1;position:relative;cursor:auto;tab-size:4;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased}
a:hover{cursor:pointer}
img,object,embed{max-width:100%;height:auto}
object,embed{height:100%}
img{-ms-interpolation-mode:bicubic}
.left{float:left!important}
.right{float:right!important}
.text-left{text-align:left!important}
.text-right{text-align:right!important}
.text-center{text-align:center!important}
.text-justify{text-align:justify!important}
.hide{display:none}
img,object,svg{display:inline-block;vertical-align:middle}
textarea{height:auto;min-height:50px}
select{width:100%}
.center{margin-left:auto;margin-right:auto}
.spread{width:100%}
p.lead,.paragraph.lead>p,#preamble>.sectionbody>.paragraph:first-of-type p{font-size:1.21875em;line-height:1.6}
.subheader,.admonitionblock td.content>.title,.audioblock>.title,.exampleblock>.title,.imageblock>.title,.listingblock>.title,.literalblock>.title,.stemblock>.title,.openblock>.title,.paragraph>.title,.quoteblock>.title,table.tableblock>.title,.verseblock>.title,.videoblock>.title,.dlist>.title,.olist>.title,.ulist>.title,.qlist>.title,.hdlist>.title{line-height:1.45;color:#7a2518;font-weight:400;margin-top:0;margin-bottom:.25em}
div,dl,dt,dd,ul,ol,li,h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6,pre,form,p,blockquote,th,td{margin:0;padding:0;direction:ltr}
a{color:#2156a5;text-decoration:underline;line-height:inherit}
a:hover,a:focus{color:#1d4b8f}
a img{border:none}
p{font-family:inherit;font-weight:400;font-size:1em;line-height:1.6;margin-bottom:1.25em;text-rendering:optimizeLegibility}
p aside{font-size:.875em;line-height:1.35;font-style:italic}
h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{font-family:"Open Sans","DejaVu Sans",sans-serif;font-weight:300;font-style:normal;color:#ba3925;text-rendering:optimizeLegibility;margin-top:1em;margin-bottom:.5em;line-height:1.0125em}
h1 small,h2 small,h3 small,#toctitle small,.sidebarblock>.content>.title small,h4 small,h5 small,h6 small{font-size:60%;color:#e99b8f;line-height:0}
h1{font-size:2.125em}
h2{font-size:1.6875em}
h3,#toctitle,.sidebarblock>.content>.title{font-size:1.375em}
h4,h5{font-size:1.125em}
h6{font-size:1em}
hr{border:solid #ddddd8;border-width:1px 0 0;clear:both;margin:1.25em 0 1.1875em;height:0}
em,i{font-style:italic;line-height:inherit}
strong,b{font-weight:bold;line-height:inherit}
small{font-size:60%;line-height:inherit}
code{font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;font-weight:400;color:rgba(0,0,0,.9)}
ul,ol,dl{font-size:1em;line-height:1.6;margin-bottom:1.25em;list-style-position:outside;font-family:inherit}
ul,ol,ul.no-bullet,ol.no-bullet{margin-left:1.5em}
ul li ul,ul li ol{margin-left:1.25em;margin-bottom:0;font-size:1em}
ul.square li ul,ul.circle li ul,ul.disc li ul{list-style:inherit}
ul.square{list-style-type:square}
ul.circle{list-style-type:circle}
ul.disc{list-style-type:disc}
ul.no-bullet{list-style:none}
ol li ul,ol li ol{margin-left:1.25em;margin-bottom:0}
dl dt{margin-bottom:.3125em;font-weight:bold}
dl dd{margin-bottom:1.25em}
abbr,acronym{text-transform:uppercase;font-size:90%;color:rgba(0,0,0,.8);border-bottom:1px dotted #ddd;cursor:help}
abbr{text-transform:none}
blockquote{margin:0 0 1.25em;padding:.5625em 1.25em 0 1.1875em;border-left:1px solid #ddd}
blockquote cite{display:block;font-size:.9375em;color:rgba(0,0,0,.6)}
blockquote cite:before{content:"\2014 \0020"}
blockquote cite a,blockquote cite a:visited{color:rgba(0,0,0,.6)}
blockquote,blockquote p{line-height:1.6;color:rgba(0,0,0,.85)}
@media only screen and (min-width:768px){h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{line-height:1.2}
h1{font-size:2.75em}
h2{font-size:2.3125em}
h3,#toctitle,.sidebarblock>.content>.title{font-size:1.6875em}
h4{font-size:1.4375em}}
table{background:#fff;margin-bottom:1.25em;border:solid 1px #dedede}
table thead,table tfoot{background:#f7f8f7;font-weight:bold}
table thead tr th,table thead tr td,table tfoot tr th,table tfoot tr td{padding:.5em .625em .625em;font-size:inherit;color:rgba(0,0,0,.8);text-align:left}
table tr th,table tr td{padding:.5625em .625em;font-size:inherit;color:rgba(0,0,0,.8)}
table tr.even,table tr.alt,table tr:nth-of-type(even){background:#f8f8f7}
table thead tr th,table tfoot tr th,table tbody tr td,table tr td,table tfoot tr td{display:table-cell;line-height:1.6}
h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{line-height:1.2;word-spacing:-.05em}
h1 strong,h2 strong,h3 strong,#toctitle strong,.sidebarblock>.content>.title strong,h4 strong,h5 strong,h6 strong{font-weight:400}
.clearfix:before,.clearfix:after,.float-group:before,.float-group:after{content:" ";display:table}
.clearfix:after,.float-group:after{clear:both}
*:not(pre)>code{font-size:.9375em;font-style:normal!important;letter-spacing:0;padding:.1em .5ex;word-spacing:-.15em;background-color:#f7f7f8;-webkit-border-radius:4px;border-radius:4px;line-height:1.45;text-rendering:optimizeSpeed;word-wrap:break-word}
*:not(pre)>code.nobreak{word-wrap:normal}
*:not(pre)>code.nowrap{white-space:nowrap}
pre,pre>code{line-height:1.45;color:rgba(0,0,0,.9);font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;font-weight:400;text-rendering:optimizeSpeed}
em em{font-style:normal}
strong strong{font-weight:400}
.keyseq{color:rgba(51,51,51,.8)}
kbd{font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;display:inline-block;color:rgba(0,0,0,.8);font-size:.65em;line-height:1.45;background-color:#f7f7f7;border:1px solid #ccc;-webkit-border-radius:3px;border-radius:3px;-webkit-box-shadow:0 1px 0 rgba(0,0,0,.2),0 0 0 .1em white inset;box-shadow:0 1px 0 rgba(0,0,0,.2),0 0 0 .1em #fff inset;margin:0 .15em;padding:.2em .5em;vertical-align:middle;position:relative;top:-.1em;white-space:nowrap}
.keyseq kbd:first-child{margin-left:0}
.keyseq kbd:last-child{margin-right:0}
.menuseq,.menu{color:rgba(0,0,0,.8)}
b.button:before,b.button:after{position:relative;top:-1px;font-weight:400}
b.button:before{content:"[";padding:0 3px 0 2px}
b.button:after{content:"]";padding:0 2px 0 3px}
p a>code:hover{color:rgba(0,0,0,.9)}
#header,#content,#footnotes,#footer{width:100%;margin-left:auto;margin-right:auto;margin-top:0;margin-bottom:0;max-width:62.5em;*zoom:1;position:relative;padding-left:.9375em;padding-right:.9375em}
#header:before,#header:after,#content:before,#content:after,#footnotes:before,#footnotes:after,#footer:before,#footer:after{content:" ";display:table}
#header:after,#content:after,#footnotes:after,#footer:after{clear:both}
#content{margin-top:1.25em}
#content:before{content:none}
#header>h1:first-child{color:rgba(0,0,0,.85);margin-top:2.25rem;margin-bottom:0}
#header>h1:first-child+#toc{margin-top:8px;border-top:1px solid #ddddd8}
#header>h1:only-child,body.toc2 #header>h1:nth-last-child(2){border-bottom:1px solid #ddddd8;padding-bottom:8px}
#header .details{border-bottom:1px solid #ddddd8;line-height:1.45;padding-top:.25em;padding-bottom:.25em;padding-left:.25em;color:rgba(0,0,0,.6);display:-ms-flexbox;display:-webkit-flex;display:flex;-ms-flex-flow:row wrap;-webkit-flex-flow:row wrap;flex-flow:row wrap}
#header .details span:first-child{margin-left:-.125em}
#header .details span.email a{color:rgba(0,0,0,.85)}
#header .details br{display:none}
#header .details br+span:before{content:"\00a0\2013\00a0"}
#header .details br+span.author:before{content:"\00a0\22c5\00a0";color:rgba(0,0,0,.85)}
#header .details br+span#revremark:before{content:"\00a0|\00a0"}
#header #revnumber{text-transform:capitalize}
#header #revnumber:after{content:"\00a0"}
#content>h1:first-child:not([class]){color:rgba(0,0,0,.85);border-bottom:1px solid #ddddd8;padding-bottom:8px;margin-top:0;padding-top:1rem;margin-bottom:1.25rem}
#toc{border-bottom:1px solid #efefed;padding-bottom:.5em}
#toc>ul{margin-left:.125em}
#toc ul.sectlevel0>li>a{font-style:italic}
#toc ul.sectlevel0 ul.sectlevel1{margin:.5em 0}
#toc ul{font-family:"Open Sans","DejaVu Sans",sans-serif;list-style-type:none}
#toc li{line-height:1.3334;margin-top:.3334em}
#toc a{text-decoration:none}
#toc a:active{text-decoration:underline}
#toctitle{color:#7a2518;font-size:1.2em}
@media only screen and (min-width:768px){#toctitle{font-size:1.375em}
body.toc2{padding-left:15em;padding-right:0}
#toc.toc2{margin-top:0!important;background-color:#f8f8f7;position:fixed;width:15em;left:0;top:0;border-right:1px solid #efefed;border-top-width:0!important;border-bottom-width:0!important;z-index:1000;padding:1.25em 1em;height:100%;overflow:auto}
#toc.toc2 #toctitle{margin-top:0;margin-bottom:.8rem;font-size:1.2em}
#toc.toc2>ul{font-size:.9em;margin-bottom:0}
#toc.toc2 ul ul{margin-left:0;padding-left:1em}
#toc.toc2 ul.sectlevel0 ul.sectlevel1{padding-left:0;margin-top:.5em;margin-bottom:.5em}
body.toc2.toc-right{padding-left:0;padding-right:15em}
body.toc2.toc-right #toc.toc2{border-right-width:0;border-left:1px solid #efefed;left:auto;right:0}}
@media only screen and (min-width:1280px){body.toc2{padding-left:20em;padding-right:0}
#toc.toc2{width:20em}
#toc.toc2 #toctitle{font-size:1.375em}
#toc.toc2>ul{font-size:.95em}
#toc.toc2 ul ul{padding-left:1.25em}
body.toc2.toc-right{padding-left:0;padding-right:20em}}
#content #toc{border-style:solid;border-width:1px;border-color:#e0e0dc;margin-bottom:1.25em;padding:1.25em;background:#f8f8f7;-webkit-border-radius:4px;border-radius:4px}
#content #toc>:first-child{margin-top:0}
#content #toc>:last-child{margin-bottom:0}
#footer{max-width:100%;background-color:rgba(0,0,0,.8);padding:1.25em}
#footer-text{color:rgba(255,255,255,.8);line-height:1.44}
.sect1{padding-bottom:.625em}
@media only screen and (min-width:768px){.sect1{padding-bottom:1.25em}}
.sect1+.sect1{border-top:1px solid #efefed}
#content h1>a.anchor,h2>a.anchor,h3>a.anchor,#toctitle>a.anchor,.sidebarblock>.content>.title>a.anchor,h4>a.anchor,h5>a.anchor,h6>a.anchor{position:absolute;z-index:1001;width:1.5ex;margin-left:-1.5ex;display:block;text-decoration:none!important;visibility:hidden;text-align:center;font-weight:400}
#content h1>a.anchor:before,h2>a.anchor:before,h3>a.anchor:before,#toctitle>a.anchor:before,.sidebarblock>.content>.title>a.anchor:before,h4>a.anchor:before,h5>a.anchor:before,h6>a.anchor:before{content:"\00A7";font-size:.85em;display:block;padding-top:.1em}
#content h1:hover>a.anchor,#content h1>a.anchor:hover,h2:hover>a.anchor,h2>a.anchor:hover,h3:hover>a.anchor,#toctitle:hover>a.anchor,.sidebarblock>.content>.title:hover>a.anchor,h3>a.anchor:hover,#toctitle>a.anchor:hover,.sidebarblock>.content>.title>a.anchor:hover,h4:hover>a.anchor,h4>a.anchor:hover,h5:hover>a.anchor,h5>a.anchor:hover,h6:hover>a.anchor,h6>a.anchor:hover{visibility:visible}
#content h1>a.link,h2>a.link,h3>a.link,#toctitle>a.link,.sidebarblock>.content>.title>a.link,h4>a.link,h5>a.link,h6>a.link{color:#ba3925;text-decoration:none}
#content h1>a.link:hover,h2>a.link:hover,h3>a.link:hover,#toctitle>a.link:hover,.sidebarblock>.content>.title>a.link:hover,h4>a.link:hover,h5>a.link:hover,h6>a.link:hover{color:#a53221}
.audioblock,.imageblock,.literalblock,.listingblock,.stemblock,.videoblock{margin-bottom:1.25em}
.admonitionblock td.content>.title,.audioblock>.title,.exampleblock>.title,.imageblock>.title,.listingblock>.title,.literalblock>.title,.stemblock>.title,.openblock>.title,.paragraph>.title,.quoteblock>.title,table.tableblock>.title,.verseblock>.title,.videoblock>.title,.dlist>.title,.olist>.title,.ulist>.title,.qlist>.title,.hdlist>.title{text-rendering:optimizeLegibility;text-align:left;font-family:"Noto Serif","DejaVu Serif",serif;font-size:1rem;font-style:italic}
table.tableblock>caption.title{white-space:nowrap;overflow:visible;max-width:0}
.paragraph.lead>p,#preamble>.sectionbody>.paragraph:first-of-type p{color:rgba(0,0,0,.85)}
table.tableblock #preamble>.sectionbody>.paragraph:first-of-type p{font-size:inherit}
.admonitionblock>table{border-collapse:separate;border:0;background:none;width:100%}
.admonitionblock>table td.icon{text-align:center;width:80px}
.admonitionblock>table td.icon img{max-width:none}
.admonitionblock>table td.icon .title{font-weight:bold;font-family:"Open Sans","DejaVu Sans",sans-serif;text-transform:uppercase}
.admonitionblock>table td.content{padding-left:1.125em;padding-right:1.25em;border-left:1px solid #ddddd8;color:rgba(0,0,0,.6)}
.admonitionblock>table td.content>:last-child>:last-child{margin-bottom:0}
.exampleblock>.content{border-style:solid;border-width:1px;border-color:#e6e6e6;margin-bottom:1.25em;padding:1.25em;background:#fff;-webkit-border-radius:4px;border-radius:4px}
.exampleblock>.content>:first-child{margin-top:0}
.exampleblock>.content>:last-child{margin-bottom:0}
.sidebarblock{border-style:solid;border-width:1px;border-color:#e0e0dc;margin-bottom:1.25em;padding:1.25em;background:#f8f8f7;-webkit-border-radius:4px;border-radius:4px}
.sidebarblock>:first-child{margin-top:0}
.sidebarblock>:last-child{margin-bottom:0}
.sidebarblock>.content>.title{color:#7a2518;margin-top:0;text-align:center}
.exampleblock>.content>:last-child>:last-child,.exampleblock>.content .olist>ol>li:last-child>:last-child,.exampleblock>.content .ulist>ul>li:last-child>:last-child,.exampleblock>.content .qlist>ol>li:last-child>:last-child,.sidebarblock>.content>:last-child>:last-child,.sidebarblock>.content .olist>ol>li:last-child>:last-child,.sidebarblock>.content .ulist>ul>li:last-child>:last-child,.sidebarblock>.content .qlist>ol>li:last-child>:last-child{margin-bottom:0}
.literalblock pre,.listingblock pre:not(.highlight),.listingblock pre[class="highlight"],.listingblock pre[class^="highlight "],.listingblock pre.CodeRay,.listingblock pre.prettyprint{background:#f7f7f8}
.sidebarblock .literalblock pre,.sidebarblock .listingblock pre:not(.highlight),.sidebarblock .listingblock pre[class="highlight"],.sidebarblock .listingblock pre[class^="highlight "],.sidebarblock .listingblock pre.CodeRay,.sidebarblock .listingblock pre.prettyprint{background:#f2f1f1}
.literalblock pre,.literalblock pre[class],.listingblock pre,.listingblock pre[class]{-webkit-border-radius:4px;border-radius:4px;word-wrap:break-word;padding:1em;font-size:.8125em}
.literalblock pre.nowrap,.literalblock pre[class].nowrap,.listingblock pre.nowrap,.listingblock pre[class].nowrap{overflow-x:auto;white-space:pre;word-wrap:normal}
@media only screen and (min-width:768px){.literalblock pre,.literalblock pre[class],.listingblock pre,.listingblock pre[class]{font-size:.90625em}}
@media only screen and (min-width:1280px){.literalblock pre,.literalblock pre[class],.listingblock pre,.listingblock pre[class]{font-size:1em}}
.literalblock.output pre{color:#f7f7f8;background-color:rgba(0,0,0,.9)}
.listingblock pre.highlightjs{padding:0}
.listingblock pre.highlightjs>code{padding:1em;-webkit-border-radius:4px;border-radius:4px}
.listingblock pre.prettyprint{border-width:0}
.listingblock>.content{position:relative}
.listingblock code[data-lang]:before{display:none;content:attr(data-lang);position:absolute;font-size:.75em;top:.425rem;right:.5rem;line-height:1;text-transform:uppercase;color:#999}
.listingblock:hover code[data-lang]:before{display:block}
.listingblock.terminal pre .command:before{content:attr(data-prompt);padding-right:.5em;color:#999}
.listingblock.terminal pre .command:not([data-prompt]):before{content:"$"}
table.pyhltable{border-collapse:separate;border:0;margin-bottom:0;background:none}
table.pyhltable td{vertical-align:top;padding-top:0;padding-bottom:0;line-height:1.45}
table.pyhltable td.code{padding-left:.75em;padding-right:0}
pre.pygments .lineno,table.pyhltable td:not(.code){color:#999;padding-left:0;padding-right:.5em;border-right:1px solid #ddddd8}
pre.pygments .lineno{display:inline-block;margin-right:.25em}
table.pyhltable .linenodiv{background:none!important;padding-right:0!important}
.quoteblock{margin:0 1em 1.25em 1.5em;display:table}
.quoteblock>.title{margin-left:-1.5em;margin-bottom:.75em}
.quoteblock blockquote,.quoteblock blockquote p{color:rgba(0,0,0,.85);font-size:1.15rem;line-height:1.75;word-spacing:.1em;letter-spacing:0;font-style:italic;text-align:justify}
.quoteblock blockquote{margin:0;padding:0;border:0}
.quoteblock blockquote:before{content:"\201c";float:left;font-size:2.75em;font-weight:bold;line-height:.6em;margin-left:-.6em;color:#7a2518;text-shadow:0 1px 2px rgba(0,0,0,.1)}
.quoteblock blockquote>.paragraph:last-child p{margin-bottom:0}
.quoteblock .attribution{margin-top:.5em;margin-right:.5ex;text-align:right}
.quoteblock .quoteblock{margin-left:0;margin-right:0;padding:.5em 0;border-left:3px solid rgba(0,0,0,.6)}
.quoteblock .quoteblock blockquote{padding:0 0 0 .75em}
.quoteblock .quoteblock blockquote:before{display:none}
.verseblock{margin:0 1em 1.25em 1em}
.verseblock pre{font-family:"Open Sans","DejaVu Sans",sans;font-size:1.15rem;color:rgba(0,0,0,.85);font-weight:300;text-rendering:optimizeLegibility}
.verseblock pre strong{font-weight:400}
.verseblock .attribution{margin-top:1.25rem;margin-left:.5ex}
.quoteblock .attribution,.verseblock .attribution{font-size:.9375em;line-height:1.45;font-style:italic}
.quoteblock .attribution br,.verseblock .attribution br{display:none}
.quoteblock .attribution cite,.verseblock .attribution cite{display:block;letter-spacing:-.025em;color:rgba(0,0,0,.6)}
.quoteblock.abstract{margin:0 0 1.25em 0;display:block}
.quoteblock.abstract blockquote,.quoteblock.abstract blockquote p{text-align:left;word-spacing:0}
.quoteblock.abstract blockquote:before,.quoteblock.abstract blockquote p:first-of-type:before{display:none}
table.tableblock{max-width:100%;border-collapse:separate}
table.tableblock td>.paragraph:last-child p>p:last-child,table.tableblock th>p:last-child,table.tableblock td>p:last-child{margin-bottom:0}
table.tableblock,th.tableblock,td.tableblock{border:0 solid #dedede}
table.grid-all th.tableblock,table.grid-all td.tableblock{border-width:0 1px 1px 0}
table.grid-all tfoot>tr>th.tableblock,table.grid-all tfoot>tr>td.tableblock{border-width:1px 1px 0 0}
table.grid-cols th.tableblock,table.grid-cols td.tableblock{border-width:0 1px 0 0}
table.grid-all *>tr>.tableblock:last-child,table.grid-cols *>tr>.tableblock:last-child{border-right-width:0}
table.grid-rows th.tableblock,table.grid-rows td.tableblock{border-width:0 0 1px 0}
table.grid-all tbody>tr:last-child>th.tableblock,table.grid-all tbody>tr:last-child>td.tableblock,table.grid-all thead:last-child>tr>th.tableblock,table.grid-rows tbody>tr:last-child>th.tableblock,table.grid-rows tbody>tr:last-child>td.tableblock,table.grid-rows thead:last-child>tr>th.tableblock{border-bottom-width:0}
table.grid-rows tfoot>tr>th.tableblock,table.grid-rows tfoot>tr>td.tableblock{border-width:1px 0 0 0}
table.frame-all{border-width:1px}
table.frame-sides{border-width:0 1px}
table.frame-topbot{border-width:1px 0}
th.halign-left,td.halign-left{text-align:left}
th.halign-right,td.halign-right{text-align:right}
th.halign-center,td.halign-center{text-align:center}
th.valign-top,td.valign-top{vertical-align:top}
th.valign-bottom,td.valign-bottom{vertical-align:bottom}
th.valign-middle,td.valign-middle{vertical-align:middle}
table thead th,table tfoot th{font-weight:bold}
tbody tr th{display:table-cell;line-height:1.6;background:#f7f8f7}
tbody tr th,tbody tr th p,tfoot tr th,tfoot tr th p{color:rgba(0,0,0,.8);font-weight:bold}
p.tableblock>code:only-child{background:none;padding:0}
p.tableblock{font-size:1em}
td>div.verse{white-space:pre}
ol{margin-left:1.75em}
ul li ol{margin-left:1.5em}
dl dd{margin-left:1.125em}
dl dd:last-child,dl dd:last-child>:last-child{margin-bottom:0}
ol>li p,ul>li p,ul dd,ol dd,.olist .olist,.ulist .ulist,.ulist .olist,.olist .ulist{margin-bottom:.625em}
ul.unstyled,ol.unnumbered,ul.checklist,ul.none{list-style-type:none}
ul.unstyled,ol.unnumbered,ul.checklist{margin-left:.625em}
ul.checklist li>p:first-child>.fa-square-o:first-child,ul.checklist li>p:first-child>.fa-check-square-o:first-child{width:1em;font-size:.85em}
ul.checklist li>p:first-child>input[type="checkbox"]:first-child{width:1em;position:relative;top:1px}
ul.inline{margin:0 auto .625em auto;margin-left:-1.375em;margin-right:0;padding:0;list-style:none;overflow:hidden}
ul.inline>li{list-style:none;float:left;margin-left:1.375em;display:block}
ul.inline>li>*{display:block}
.unstyled dl dt{font-weight:400;font-style:normal}
ol.arabic{list-style-type:decimal}
ol.decimal{list-style-type:decimal-leading-zero}
ol.loweralpha{list-style-type:lower-alpha}
ol.upperalpha{list-style-type:upper-alpha}
ol.lowerroman{list-style-type:lower-roman}
ol.upperroman{list-style-type:upper-roman}
ol.lowergreek{list-style-type:lower-greek}
.hdlist>table,.colist>table{border:0;background:none}
.hdlist>table>tbody>tr,.colist>table>tbody>tr{background:none}
td.hdlist1,td.hdlist2{vertical-align:top;padding:0 .625em}
td.hdlist1{font-weight:bold;padding-bottom:1.25em}
.literalblock+.colist,.listingblock+.colist{margin-top:-.5em}
.colist>table tr>td:first-of-type{padding:0 .75em;line-height:1}
.colist>table tr>td:last-of-type{padding:.25em 0}
.thumb,.th{line-height:0;display:inline-block;border:solid 4px #fff;-webkit-box-shadow:0 0 0 1px #ddd;box-shadow:0 0 0 1px #ddd}
.imageblock.left,.imageblock[style*="float: left"]{margin:.25em .625em 1.25em 0}
.imageblock.right,.imageblock[style*="float: right"]{margin:.25em 0 1.25em .625em}
.imageblock>.title{margin-bottom:0}
.imageblock.thumb,.imageblock.th{border-width:6px}
.imageblock.thumb>.title,.imageblock.th>.title{padding:0 .125em}
.image.left,.image.right{margin-top:.25em;margin-bottom:.25em;display:inline-block;line-height:0}
.image.left{margin-right:.625em}
.image.right{margin-left:.625em}
a.image{text-decoration:none;display:inline-block}
a.image object{pointer-events:none}
sup.footnote,sup.footnoteref{font-size:.875em;position:static;vertical-align:super}
sup.footnote a,sup.footnoteref a{text-decoration:none}
sup.footnote a:active,sup.footnoteref a:active{text-decoration:underline}
#footnotes{padding-top:.75em;padding-bottom:.75em;margin-bottom:.625em}
#footnotes hr{width:20%;min-width:6.25em;margin:-.25em 0 .75em 0;border-width:1px 0 0 0}
#footnotes .footnote{padding:0 .375em 0 .225em;line-height:1.3334;font-size:.875em;margin-left:1.2em;text-indent:-1.05em;margin-bottom:.2em}
#footnotes .footnote a:first-of-type{font-weight:bold;text-decoration:none}
#footnotes .footnote:last-of-type{margin-bottom:0}
#content #footnotes{margin-top:-.625em;margin-bottom:0;padding:.75em 0}
.gist .file-data>table{border:0;background:#fff;width:100%;margin-bottom:0}
.gist .file-data>table td.line-data{width:99%}
div.unbreakable{page-break-inside:avoid}
.big{font-size:larger}
.small{font-size:smaller}
.underline{text-decoration:underline}
.overline{text-decoration:overline}
.line-through{text-decoration:line-through}
.aqua{color:#00bfbf}
.aqua-background{background-color:#00fafa}
.black{color:#000}
.black-background{background-color:#000}
.blue{color:#0000bf}
.blue-background{background-color:#0000fa}
.fuchsia{color:#bf00bf}
.fuchsia-background{background-color:#fa00fa}
.gray{color:#606060}
.gray-background{background-color:#7d7d7d}
.green{color:#006000}
.green-background{background-color:#007d00}
.lime{color:#00bf00}
.lime-background{background-color:#00fa00}
.maroon{color:#600000}
.maroon-background{background-color:#7d0000}
.navy{color:#000060}
.navy-background{background-color:#00007d}
.olive{color:#606000}
.olive-background{background-color:#7d7d00}
.purple{color:#600060}
.purple-background{background-color:#7d007d}
.red{color:#bf0000}
.red-background{background-color:#fa0000}
.silver{color:#909090}
.silver-background{background-color:#bcbcbc}
.teal{color:#006060}
.teal-background{background-color:#007d7d}
.white{color:#bfbfbf}
.white-background{background-color:#fafafa}
.yellow{color:#bfbf00}
.yellow-background{background-color:#fafa00}
span.icon>.fa{cursor:default}
.admonitionblock td.icon [class^="fa icon-"]{font-size:2.5em;text-shadow:1px 1px 2px rgba(0,0,0,.5);cursor:default}
.admonitionblock td.icon .icon-note:before{content:"\f05a";color:#19407c}
.admonitionblock td.icon .icon-tip:before{content:"\f0eb";text-shadow:1px 1px 2px rgba(155,155,0,.8);color:#111}
.admonitionblock td.icon .icon-warning:before{content:"\f071";color:#bf6900}
.admonitionblock td.icon .icon-caution:before{content:"\f06d";color:#bf3400}
.admonitionblock td.icon .icon-important:before{content:"\f06a";color:#bf0000}
.conum[data-value]{display:inline-block;color:#fff!important;background-color:rgba(0,0,0,.8);-webkit-border-radius:100px;border-radius:100px;text-align:center;font-size:.75em;width:1.67em;height:1.67em;line-height:1.67em;font-family:"Open Sans","DejaVu Sans",sans-serif;font-style:normal;font-weight:bold}
.conum[data-value] *{color:#fff!important}
.conum[data-value]+b{display:none}
.conum[data-value]:after{content:attr(data-value)}
pre .conum[data-value]{position:relative;top:-.125em}
b.conum *{color:inherit!important}
.conum:not([data-value]):empty{display:none}
dt,th.tableblock,td.content,div.footnote{text-rendering:optimizeLegibility}
h1,h2,p,td.content,span.alt{letter-spacing:-.01em}
p strong,td.content strong,div.footnote strong{letter-spacing:-.005em}
p,blockquote,dt,td.content,span.alt{font-size:1.0625rem}
p{margin-bottom:1.25rem}
.sidebarblock p,.sidebarblock dt,.sidebarblock td.content,p.tableblock{font-size:1em}
.exampleblock>.content{background-color:#fffef7;border-color:#e0e0dc;-webkit-box-shadow:0 1px 4px #e0e0dc;box-shadow:0 1px 4px #e0e0dc}
.print-only{display:none!important}
@media print{@page{margin:1.25cm .75cm}
*{-webkit-box-shadow:none!important;box-shadow:none!important;text-shadow:none!important}
a{color:inherit!important;text-decoration:underline!important}
a.bare,a[href^="#"],a[href^="mailto:"]{text-decoration:none!important}
a[href^="http:"]:not(.bare):after,a[href^="https:"]:not(.bare):after{content:"(" attr(href) ")";display:inline-block;font-size:.875em;padding-left:.25em}
abbr[title]:after{content:" (" attr(title) ")"}
pre,blockquote,tr,img,object,svg{page-break-inside:avoid}
thead{display:table-header-group}
svg{max-width:100%}
p,blockquote,dt,td.content{font-size:1em;orphans:3;widows:3}
h2,h3,#toctitle,.sidebarblock>.content>.title{page-break-after:avoid}
#toc,.sidebarblock,.exampleblock>.content{background:none!important}
#toc{border-bottom:1px solid #ddddd8!important;padding-bottom:0!important}
.sect1{padding-bottom:0!important}
.sect1+.sect1{border:0!important}
#header>h1:first-child{margin-top:1.25rem}
body.book #header{text-align:center}
body.book #header>h1:first-child{border:0!important;margin:2.5em 0 1em 0}
body.book #header .details{border:0!important;display:block;padding:0!important}
body.book #header .details span:first-child{margin-left:0!important}
body.book #header .details br{display:block}
body.book #header .details br+span:before{content:none!important}
body.book #toc{border:0!important;text-align:left!important;padding:0!important;margin:0!important}
body.book #toc,body.book #preamble,body.book h1.sect0,body.book .sect1>h2{page-break-before:always}
.listingblock code[data-lang]:before{display:block}
#footer{background:none!important;padding:0 .9375em}
#footer-text{color:rgba(0,0,0,.6)!important;font-size:.9em}
.hide-on-print{display:none!important}
.print-only{display:block!important}
.hide-for-print{display:none!important}
.show-for-print{display:inherit!important}}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
/* Stylesheet for CodeRay to match GitHub theme | MIT License | http://foundation.zurb.com */
/*pre.CodeRay {background-color:#f7f7f8;}*/
.CodeRay .line-numbers{border-right:1px solid #d8d8d8;padding:0 0.5em 0 .25em}
.CodeRay span.line-numbers{display:inline-block;margin-right:.5em;color:rgba(0,0,0,.3)}
.CodeRay .line-numbers strong{color:rgba(0,0,0,.4)}
table.CodeRay{border-collapse:separate;border-spacing:0;margin-bottom:0;border:0;background:none}
table.CodeRay td{vertical-align: top;line-height:1.45}
table.CodeRay td.line-numbers{text-align:right}
table.CodeRay td.line-numbers>pre{padding:0;color:rgba(0,0,0,.3)}
table.CodeRay td.code{padding:0 0 0 .5em}
table.CodeRay td.code>pre{padding:0}
.CodeRay .debug{color:#fff !important;background:#000080 !important}
.CodeRay .annotation{color:#007}
.CodeRay .attribute-name{color:#000080}
.CodeRay .attribute-value{color:#700}
.CodeRay .binary{color:#509}
.CodeRay .comment{color:#998;font-style:italic}
.CodeRay .char{color:#04d}
.CodeRay .char .content{color:#04d}
.CodeRay .char .delimiter{color:#039}
.CodeRay .class{color:#458;font-weight:bold}
.CodeRay .complex{color:#a08}
.CodeRay .constant,.CodeRay .predefined-constant{color:#008080}
.CodeRay .color{color:#099}
.CodeRay .class-variable{color:#369}
.CodeRay .decorator{color:#b0b}
.CodeRay .definition{color:#099}
.CodeRay .delimiter{color:#000}
.CodeRay .doc{color:#970}
.CodeRay .doctype{color:#34b}
.CodeRay .doc-string{color:#d42}
.CodeRay .escape{color:#666}
.CodeRay .entity{color:#800}
.CodeRay .error{color:#808}
.CodeRay .exception{color:inherit}
.CodeRay .filename{color:#099}
.CodeRay .function{color:#900;font-weight:bold}
.CodeRay .global-variable{color:#008080}
.CodeRay .hex{color:#058}
.CodeRay .integer,.CodeRay .float{color:#099}
.CodeRay .include{color:#555}
.CodeRay .inline{color:#000}
.CodeRay .inline .inline{background:#ccc}
.CodeRay .inline .inline .inline{background:#bbb}
.CodeRay .inline .inline-delimiter{color:#d14}
.CodeRay .inline-delimiter{color:#d14}
.CodeRay .important{color:#555;font-weight:bold}
.CodeRay .interpreted{color:#b2b}
.CodeRay .instance-variable{color:#008080}
.CodeRay .label{color:#970}
.CodeRay .local-variable{color:#963}
.CodeRay .octal{color:#40e}
.CodeRay .predefined{color:#369}
.CodeRay .preprocessor{color:#579}
.CodeRay .pseudo-class{color:#555}
.CodeRay .directive{font-weight:bold}
.CodeRay .type{font-weight:bold}
.CodeRay .predefined-type{color:inherit}
.CodeRay .reserved,.CodeRay .keyword {color:#000;font-weight:bold}
.CodeRay .key{color:#808}
.CodeRay .key .delimiter{color:#606}
.CodeRay .key .char{color:#80f}
.CodeRay .value{color:#088}
.CodeRay .regexp .delimiter{color:#808}
.CodeRay .regexp .content{color:#808}
.CodeRay .regexp .modifier{color:#808}
.CodeRay .regexp .char{color:#d14}
.CodeRay .regexp .function{color:#404;font-weight:bold}
.CodeRay .string{color:#d20}
.CodeRay .string .string .string{background:#ffd0d0}
.CodeRay .string .content{color:#d14}
.CodeRay .string .char{color:#d14}
.CodeRay .string .delimiter{color:#d14}
.CodeRay .shell{color:#d14}
.CodeRay .shell .delimiter{color:#d14}
.CodeRay .symbol{color:#990073}
.CodeRay .symbol .content{color:#a60}
.CodeRay .symbol .delimiter{color:#630}
.CodeRay .tag{color:#008080}
.CodeRay .tag-special{color:#d70}
.CodeRay .variable{color:#036}
.CodeRay .insert{background:#afa}
.CodeRay .delete{background:#faa}
.CodeRay .change{color:#aaf;background:#007}
.CodeRay .head{color:#f8f;background:#505}
.CodeRay .insert .insert{color:#080}
.CodeRay .delete .delete{color:#800}
.CodeRay .change .change{color:#66f}
.CodeRay .head .head{color:#f4f}
</style>
</head>
<body class="book toc2 toc-left">
<div id="header">
<h1>REST API documentation</h1>
<div id="toc" class="toc2">
<div id="toctitle">Table of Contents</div>
<ul class="sectlevel1">
<li><a href="#_overview">1. Overview</a>
<ul class="sectlevel2">
<li><a href="#version-information">1.1. Version information</a></li>
<li><a href="#contact-information">1.2. Contact information</a></li>
<li><a href="#license-information">1.3. License information</a></li>
<li><a href="#uri-scheme">1.4. URI scheme</a></li>
<li><a href="#tags">1.5. Tags</a></li>
</ul>
</li>
<li><a href="#_definitions">2. Definitions</a>
<ul class="sectlevel2">
<li><a href="#_6c25ab3bcdecc741d9f01b3bf28ff16d">2.1. AbstractJsonSchemaProperty«object»</a></li>
<li><a href="#_apps">2.2. Apps</a></li>
<li><a href="#_d6a4847683c84b693242956703126ad1">2.3. Collection«Apps»</a></li>
<li><a href="#_b07c66a481263dede2349ac223d023af">2.4. Collection«Link»</a></li>
<li><a href="#_4b229d17859bcc4c429e300623e2304f">2.5. Collection«Role»</a></li>
<li><a href="#_e411467c6995420fb08272b4cf992926">2.6. Collection«User»</a></li>
<li><a href="#_f720601e8234a7d1eb8ee31c6bbcce35">2.7. Collection«string»</a></li>
<li><a href="#_item">2.8. Item</a></li>
<li><a href="#_jsonschema">2.9. JsonSchema</a></li>
<li><a href="#_link">2.10. Link</a></li>
<li><a href="#_repositorylinksresource">2.11. RepositoryLinksResource</a></li>
<li><a href="#_resourcesupport">2.12. ResourceSupport</a></li>
<li><a href="#_48aa17fd90b9eb7d21da9958dc56b111">2.13. Resources«Apps»</a></li>
<li><a href="#_5956193908f022f308de9cdb36ac9a8b">2.14. Resources«Link»</a></li>
<li><a href="#_072aa28c1b3060cb86fefb0e6fcf9406">2.15. Resources«Role»</a></li>
<li><a href="#_95c27685fb3786310947ea2de25ecc64">2.16. Resources«User»</a></li>
<li><a href="#_d41ab31641c81a9cbba20b0bc9de934d">2.17. Resource«Apps»</a></li>
<li><a href="#_45f492ff7f2355dd9fe8670f966c13b1">2.18. Resource«Role»</a></li>
<li><a href="#_7cfe2818d2924b9c0f220f9e272581a5">2.19. Resource«User»</a></li>
<li><a href="#_role">2.20. Role</a></li>
<li><a href="#_timestamp">2.21. Timestamp</a></li>
<li><a href="#_user">2.22. User</a></li>
</ul>
</li>
<li><a href="#_paths">3. Resources</a>
<ul class="sectlevel2">
<li><a href="#_apps_entity_resource">3.1. Apps Entity</a></li>
<li><a href="#_entity_metadata_services_resource">3.2. Entity Metadata Services</a>
<ul class="sectlevel3">
<li><a href="#_schemausingget_1">3.2.1. schema</a></li>
<li><a href="#_alpsoptionsusingoptions_2">3.2.2. alpsOptions</a></li>
<li><a href="#_schemausingget">3.2.3. schema</a></li>
<li><a href="#_alpsoptionsusingoptions">3.2.4. alpsOptions</a></li>
</ul>
</li>
<li><a href="#_role_entity_resource">3.3. Role Entity</a>
<ul class="sectlevel3">
<li><a href="#_postcollectionresourceusingpost_1">3.3.1. postCollectionResource</a></li>
<li><a href="#_getcollectionresourcecompactusingget_1">3.3.2. getCollectionResourceCompact</a></li>
<li><a href="#_headcollectionresourceusinghead_1">3.3.3. headCollectionResource</a></li>
<li><a href="#_optionsforcollectionresourceusingoptions_1">3.3.4. optionsForCollectionResource</a></li>
<li><a href="#_getitemresourceusingget_1">3.3.5. getItemResource</a></li>
<li><a href="#_putitemresourceusingput_1">3.3.6. putItemResource</a></li>
<li><a href="#_deleteitemresourceusingdelete_1">3.3.7. deleteItemResource</a></li>
<li><a href="#_patchitemresourceusingpatch_1">3.3.8. patchItemResource</a></li>
<li><a href="#_headforitemresourceusinghead_1">3.3.9. headForItemResource</a></li>
<li><a href="#_optionsforitemresourceusingoptions_1">3.3.10. optionsForItemResource</a></li>
</ul>
</li>
<li><a href="#_role_related_services_resource">3.4. Role Related Services</a>
<ul class="sectlevel3">
<li><a href="#_getallroleusingget">3.4.1. List All The Roles</a></li>
<li><a href="#_getuserrolesusingget">3.4.2. List All The Users associated to that role</a></li>
</ul>
</li>
<li><a href="#_socket_related_services_resource">3.5. Socket Related Services</a>
<ul class="sectlevel3">
<li><a href="#_pingsocketusingpost">3.5.1. Ping the Websocket User</a></li>
<li><a href="#_sendtouserusingpost">3.5.2. Ping the MQTT User</a></li>
</ul>
</li>
<li><a href="#_user_entity_resource">3.6. User Entity</a>
<ul class="sectlevel3">
<li><a href="#_postcollectionresourceusingpost_2">3.6.1. postCollectionResource</a></li>
<li><a href="#_getcollectionresourcecompactusingget_2">3.6.2. getCollectionResourceCompact</a></li>
<li><a href="#_headcollectionresourceusinghead_2">3.6.3. headCollectionResource</a></li>
<li><a href="#_optionsforcollectionresourceusingoptions_2">3.6.4. optionsForCollectionResource</a></li>
<li><a href="#_getitemresourceusingget_2">3.6.5. getItemResource</a></li>
<li><a href="#_putitemresourceusingput_2">3.6.6. putItemResource</a></li>
<li><a href="#_deleteitemresourceusingdelete_2">3.6.7. deleteItemResource</a></li>
<li><a href="#_patchitemresourceusingpatch_2">3.6.8. patchItemResource</a></li>
<li><a href="#_headforitemresourceusinghead_2">3.6.9. headForItemResource</a></li>
<li><a href="#_optionsforitemresourceusingoptions_2">3.6.10. optionsForItemResource</a></li>
</ul>
</li>
<li><a href="#_user_related_services_resource">3.7. User Related Services</a>
<ul class="sectlevel3">
<li><a href="#_getalluserusingget">3.7.1. List All The Users</a></li>
<li><a href="#_userappsusingget">3.7.2. Get Roles For the User</a></li>
<li><a href="#_createuserusingpost">3.7.3. Create User</a></li>
<li><a href="#_deleteuserusingdelete">3.7.4. Delete User</a></li>
<li><a href="#_getuserusingget">3.7.5. List The User</a></li>
<li><a href="#_meusingget">3.7.6. Get The current Logged User</a></li>
<li><a href="#_meroleusingget">3.7.7. Get The current Logged Users Role</a></li>
<li><a href="#_sendmessageusingpost">3.7.8. Sends the Message to User</a></li>
<li><a href="#_userroleusingget">3.7.9. Get Roles For the User</a></li>
<li><a href="#_updateuserusingput">3.7.10. Update User</a></li>
</ul>
</li>
<li><a href="#_profile-controller_resource">3.8. Profile-controller</a>
<ul class="sectlevel3">
<li><a href="#_listallformsofmetadatausingget">3.8.1. listAllFormsOfMetadata</a></li>
<li><a href="#_profileoptionsusingoptions">3.8.2. profileOptions</a></li>
</ul>
</li>
<li><a href="#_repository-controller_resource">3.9. Repository-controller</a>
<ul class="sectlevel3">
<li><a href="#_listrepositoriesusingget">3.9.1. listRepositories</a></li>
<li><a href="#_headforrepositoriesusinghead">3.9.2. headForRepositories</a></li>
<li><a href="#_optionsforrepositoriesusingoptions">3.9.3. optionsForRepositories</a></li>
<li><a href="#_listrepositoriesusingget_1">3.9.4. listRepositories</a></li>
<li><a href="#_headforrepositoriesusinghead_1">3.9.5. headForRepositories</a></li>
<li><a href="#_optionsforrepositoriesusingoptions_1">3.9.6. optionsForRepositories</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>
<div id="content">
<div class="sect1">
<h2 id="_overview"><a class="anchor" href="#_overview"></a><a class="link" href="#_overview">1. Overview</a></h2>
<div class="sectionbody">
<div class="paragraph">
<p>see <a href="https://github.com/StefanSchubert/sabi" class="bare">https://github.com/StefanSchubert/sabi</a></p>
</div>
<div class="sect2">
<h3 id="version-information"><a class="anchor" href="#version-information"></a><a class="link" href="#version-information">1.1. Version information</a></h3>
<div class="paragraph">
<p><em>Version</em> : 1.0</p>
</div>
</div>
<div class="sect2">
<h3 id="contact-information"><a class="anchor" href="#contact-information"></a><a class="link" href="#contact-information">1.2. Contact information</a></h3>
<div class="paragraph">
<p><em>Contact</em> : Poovarasan Vasudevan<br>
<em>Contact Email</em> : <a href="mailto:poosan9@gmail.com">poosan9@gmail.com</a></p>
</div>
</div>
<div class="sect2">
<h3 id="license-information"><a class="anchor" href="#license-information"></a><a class="link" href="#license-information">1.3. License information</a></h3>
<div class="paragraph">
<p><em>License</em> : MIT Licence (MIT)<br>
<em>License URL</em> : <a href="https://github.com/StefanSchubert/sabi/blob/master/LICENSE" class="bare">https://github.com/StefanSchubert/sabi/blob/master/LICENSE</a><br>
<em>Terms of service</em> : null</p>
</div>
</div>
<div class="sect2">
<h3 id="uri-scheme"><a class="anchor" href="#uri-scheme"></a><a class="link" href="#uri-scheme">1.4. URI scheme</a></h3>
<div class="paragraph">
<p><em>Host</em> : localhost:8097<br>
<em>BasePath</em> : /</p>
</div>
</div>
<div class="sect2">
<h3 id="tags"><a class="anchor" href="#tags"></a><a class="link" href="#tags">1.5. Tags</a></h3>
<div class="ulist">
<ul>
<li>
<p>Apps Entity : Repository Entity Controller</p>
</li>
<li>
<p>Entity Metadata Services : Alps Controller</p>
</li>
<li>
<p>Role Entity : Repository Entity Controller</p>
</li>
<li>
<p>Role Related Services : Operations with Role Models through Rest</p>
</li>
<li>
<p>Socket Related Services : Operations with Models through Rest</p>
</li>
<li>
<p>User Entity : Repository Entity Controller</p>
</li>
<li>
<p>User Related Services : Operations with User Models through Rest</p>
</li>
<li>
<p>profile-controller : Profile Controller</p>
</li>
<li>
<p>repository-controller : Repository Controller</p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_definitions"><a class="anchor" href="#_definitions"></a><a class="link" href="#_definitions">2. Definitions</a></h2>
<div class="sectionbody">
<div class="sect2">
<h3 id="_6c25ab3bcdecc741d9f01b3bf28ff16d"><a class="anchor" href="#_6c25ab3bcdecc741d9f01b3bf28ff16d"></a><a class="link" href="#_6c25ab3bcdecc741d9f01b3bf28ff16d">2.1. AbstractJsonSchemaProperty«object»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>readOnly</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">boolean</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>title</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_apps"><a class="anchor" href="#_apps"></a><a class="link" href="#_apps">2.2. Apps</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>appKey</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>createdDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>description</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>name</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>updatedDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_d6a4847683c84b693242956703126ad1"><a class="anchor" href="#_d6a4847683c84b693242956703126ad1"></a><a class="link" href="#_d6a4847683c84b693242956703126ad1">2.3. Collection«Apps»</a></h3>
<div class="paragraph">
<p><em>Type</em> : object</p>
</div>
</div>
<div class="sect2">
<h3 id="_b07c66a481263dede2349ac223d023af"><a class="anchor" href="#_b07c66a481263dede2349ac223d023af"></a><a class="link" href="#_b07c66a481263dede2349ac223d023af">2.4. Collection«Link»</a></h3>
<div class="paragraph">
<p><em>Type</em> : object</p>
</div>
</div>
<div class="sect2">
<h3 id="_4b229d17859bcc4c429e300623e2304f"><a class="anchor" href="#_4b229d17859bcc4c429e300623e2304f"></a><a class="link" href="#_4b229d17859bcc4c429e300623e2304f">2.5. Collection«Role»</a></h3>
<div class="paragraph">
<p><em>Type</em> : object</p>
</div>
</div>
<div class="sect2">
<h3 id="_e411467c6995420fb08272b4cf992926"><a class="anchor" href="#_e411467c6995420fb08272b4cf992926"></a><a class="link" href="#_e411467c6995420fb08272b4cf992926">2.6. Collection«User»</a></h3>
<div class="paragraph">
<p><em>Type</em> : object</p>
</div>
</div>
<div class="sect2">
<h3 id="_f720601e8234a7d1eb8ee31c6bbcce35"><a class="anchor" href="#_f720601e8234a7d1eb8ee31c6bbcce35"></a><a class="link" href="#_f720601e8234a7d1eb8ee31c6bbcce35">2.7. Collection«string»</a></h3>
<div class="paragraph">
<p><em>Type</em> : object</p>
</div>
</div>
<div class="sect2">
<h3 id="_item"><a class="anchor" href="#_item"></a><a class="link" href="#_item">2.8. Item</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>properties</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; string, <a href="#_6c25ab3bcdecc741d9f01b3bf28ff16d">AbstractJsonSchemaProperty«object»</a> &gt; map</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>requiredProperties</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_f720601e8234a7d1eb8ee31c6bbcce35">Collection«string»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>type</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_jsonschema"><a class="anchor" href="#_jsonschema"></a><a class="link" href="#_jsonschema">2.9. JsonSchema</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>$schema</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>definitions</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; string, <a href="#_item">Item</a> &gt; map</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>description</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>properties</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; string, <a href="#_6c25ab3bcdecc741d9f01b3bf28ff16d">AbstractJsonSchemaProperty«object»</a> &gt; map</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>requiredProperties</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_f720601e8234a7d1eb8ee31c6bbcce35">Collection«string»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>title</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>type</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_link"><a class="anchor" href="#_link"></a><a class="link" href="#_link">2.10. Link</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>href</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>rel</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>templated</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">boolean</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_repositorylinksresource"><a class="anchor" href="#_repositorylinksresource"></a><a class="link" href="#_repositorylinksresource">2.11. RepositoryLinksResource</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_resourcesupport"><a class="anchor" href="#_resourcesupport"></a><a class="link" href="#_resourcesupport">2.12. ResourceSupport</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_48aa17fd90b9eb7d21da9958dc56b111"><a class="anchor" href="#_48aa17fd90b9eb7d21da9958dc56b111"></a><a class="link" href="#_48aa17fd90b9eb7d21da9958dc56b111">2.13. Resources«Apps»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>content</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_d6a4847683c84b693242956703126ad1">Collection«Apps»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_5956193908f022f308de9cdb36ac9a8b"><a class="anchor" href="#_5956193908f022f308de9cdb36ac9a8b"></a><a class="link" href="#_5956193908f022f308de9cdb36ac9a8b">2.14. Resources«Link»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>content</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_b07c66a481263dede2349ac223d023af">Collection«Link»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_072aa28c1b3060cb86fefb0e6fcf9406"><a class="anchor" href="#_072aa28c1b3060cb86fefb0e6fcf9406"></a><a class="link" href="#_072aa28c1b3060cb86fefb0e6fcf9406">2.15. Resources«Role»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>content</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_4b229d17859bcc4c429e300623e2304f">Collection«Role»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_95c27685fb3786310947ea2de25ecc64"><a class="anchor" href="#_95c27685fb3786310947ea2de25ecc64"></a><a class="link" href="#_95c27685fb3786310947ea2de25ecc64">2.16. Resources«User»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>content</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_e411467c6995420fb08272b4cf992926">Collection«User»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_d41ab31641c81a9cbba20b0bc9de934d"><a class="anchor" href="#_d41ab31641c81a9cbba20b0bc9de934d"></a><a class="link" href="#_d41ab31641c81a9cbba20b0bc9de934d">2.17. Resource«Apps»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>appKey</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>createdDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>description</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>name</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>updatedDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_45f492ff7f2355dd9fe8670f966c13b1"><a class="anchor" href="#_45f492ff7f2355dd9fe8670f966c13b1"></a><a class="link" href="#_45f492ff7f2355dd9fe8670f966c13b1">2.18. Resource«Role»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>name</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_7cfe2818d2924b9c0f220f9e272581a5"><a class="anchor" href="#_7cfe2818d2924b9c0f220f9e272581a5"></a><a class="link" href="#_7cfe2818d2924b9c0f220f9e272581a5">2.19. Resource«User»</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>createdDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>email</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>firstName</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>lastName</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>links</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_link">Link</a> &gt; array</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>updatedDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_role"><a class="anchor" href="#_role"></a><a class="link" href="#_role">2.20. Role</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>name</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_timestamp"><a class="anchor" href="#_timestamp"></a><a class="link" href="#_timestamp">2.21. Timestamp</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>date</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>day</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>hours</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>minutes</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>month</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>nanos</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>seconds</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>time</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int64)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>timezoneOffset</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>year</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">integer (int32)</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="_user"><a class="anchor" href="#_user"></a><a class="link" href="#_user">2.22. User</a></h3>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 42.8571%;">
<col style="width: 57.1429%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>createdDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>email</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>firstName</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>lastName</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>updatedDate</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_timestamp">Timestamp</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>optional</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_paths"><a class="anchor" href="#_paths"></a><a class="link" href="#_paths">3. Resources</a></h2>
<div class="sectionbody">
<div class="sect2">
<h3 id="_apps_entity_resource"><a class="anchor" href="#_apps_entity_resource"></a><a class="link" href="#_apps_entity_resource">3.1. Apps Entity</a></h3>
<div class="paragraph">
<p>Repository Entity Controller</p>
</div>
</div>
<div class="sect2">
<h3 id="_entity_metadata_services_resource"><a class="anchor" href="#_entity_metadata_services_resource"></a><a class="link" href="#_entity_metadata_services_resource">3.2. Entity Metadata Services</a></h3>
<div class="paragraph">
<p>Alps Controller</p>
</div>
<div class="sect3">
<h4 id="_schemausingget_1"><a class="anchor" href="#_schemausingget_1"></a><a class="link" href="#_schemausingget_1">3.2.1. schema</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/profile/roles</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses"><a class="anchor" href="#responses"></a><a class="link" href="#responses">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_jsonschema">JsonSchema</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes"><a class="anchor" href="#consumes"></a><a class="link" href="#consumes">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces"><a class="anchor" href="#produces"></a><a class="link" href="#produces">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/schema+json</code></p>
</li>
<li>
<p><code><strong>/</strong></code></p>
</li>
<li>
<p><code>application/alps+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_alpsoptionsusingoptions_2"><a class="anchor" href="#_alpsoptionsusingoptions_2"></a><a class="link" href="#_alpsoptionsusingoptions_2">3.2.2. alpsOptions</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/profile/roles</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-2"><a class="anchor" href="#responses-2"></a><a class="link" href="#responses-2">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-2"><a class="anchor" href="#consumes-2"></a><a class="link" href="#consumes-2">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-2"><a class="anchor" href="#produces-2"></a><a class="link" href="#produces-2">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/alps+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_schemausingget"><a class="anchor" href="#_schemausingget"></a><a class="link" href="#_schemausingget">3.2.3. schema</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/profile/users</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-3"><a class="anchor" href="#responses-3"></a><a class="link" href="#responses-3">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_jsonschema">JsonSchema</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-3"><a class="anchor" href="#consumes-3"></a><a class="link" href="#consumes-3">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-3"><a class="anchor" href="#produces-3"></a><a class="link" href="#produces-3">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/schema+json</code></p>
</li>
<li>
<p><code><strong>/</strong></code></p>
</li>
<li>
<p><code>application/alps+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_alpsoptionsusingoptions"><a class="anchor" href="#_alpsoptionsusingoptions"></a><a class="link" href="#_alpsoptionsusingoptions">3.2.4. alpsOptions</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/profile/users</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-4"><a class="anchor" href="#responses-4"></a><a class="link" href="#responses-4">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-4"><a class="anchor" href="#consumes-4"></a><a class="link" href="#consumes-4">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-4"><a class="anchor" href="#produces-4"></a><a class="link" href="#produces-4">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/alps+json</code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_role_entity_resource"><a class="anchor" href="#_role_entity_resource"></a><a class="link" href="#_role_entity_resource">3.3. Role Entity</a></h3>
<div class="paragraph">
<p>Repository Entity Controller</p>
</div>
<div class="sect3">
<h4 id="_postcollectionresourceusingpost_1"><a class="anchor" href="#_postcollectionresourceusingpost_1"></a><a class="link" href="#_postcollectionresourceusingpost_1">3.3.1. postCollectionResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>POST /api/rest-uri/roles</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters"><a class="anchor" href="#parameters"></a><a class="link" href="#parameters">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>payload</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">payload</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_role">Role</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-5"><a class="anchor" href="#responses-5"></a><a class="link" href="#responses-5">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_45f492ff7f2355dd9fe8670f966c13b1">Resource«Role»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-5"><a class="anchor" href="#consumes-5"></a><a class="link" href="#consumes-5">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-5"><a class="anchor" href="#produces-5"></a><a class="link" href="#produces-5">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getcollectionresourcecompactusingget_1"><a class="anchor" href="#_getcollectionresourcecompactusingget_1"></a><a class="link" href="#_getcollectionresourcecompactusingget_1">3.3.2. getCollectionResourceCompact</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/roles</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-6"><a class="anchor" href="#responses-6"></a><a class="link" href="#responses-6">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_5956193908f022f308de9cdb36ac9a8b">Resources«Link»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-6"><a class="anchor" href="#consumes-6"></a><a class="link" href="#consumes-6">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-6"><a class="anchor" href="#produces-6"></a><a class="link" href="#produces-6">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>text/uri-list</code></p>
</li>
<li>
<p><code>application/x-spring-data-compact+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_headcollectionresourceusinghead_1"><a class="anchor" href="#_headcollectionresourceusinghead_1"></a><a class="link" href="#_headcollectionresourceusinghead_1">3.3.3. headCollectionResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>HEAD /api/rest-uri/roles</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-7"><a class="anchor" href="#responses-7"></a><a class="link" href="#responses-7">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-7"><a class="anchor" href="#consumes-7"></a><a class="link" href="#consumes-7">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-7"><a class="anchor" href="#produces-7"></a><a class="link" href="#produces-7">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_optionsforcollectionresourceusingoptions_1"><a class="anchor" href="#_optionsforcollectionresourceusingoptions_1"></a><a class="link" href="#_optionsforcollectionresourceusingoptions_1">3.3.4. optionsForCollectionResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/roles</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-8"><a class="anchor" href="#responses-8"></a><a class="link" href="#responses-8">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-8"><a class="anchor" href="#consumes-8"></a><a class="link" href="#consumes-8">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-8"><a class="anchor" href="#produces-8"></a><a class="link" href="#produces-8">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getitemresourceusingget_1"><a class="anchor" href="#_getitemresourceusingget_1"></a><a class="link" href="#_getitemresourceusingget_1">3.3.5. getItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/roles/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-2"><a class="anchor" href="#parameters-2"></a><a class="link" href="#parameters-2">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-9"><a class="anchor" href="#responses-9"></a><a class="link" href="#responses-9">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_072aa28c1b3060cb86fefb0e6fcf9406">Resources«Role»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-9"><a class="anchor" href="#consumes-9"></a><a class="link" href="#consumes-9">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-9"><a class="anchor" href="#produces-9"></a><a class="link" href="#produces-9">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_putitemresourceusingput_1"><a class="anchor" href="#_putitemresourceusingput_1"></a><a class="link" href="#_putitemresourceusingput_1">3.3.6. putItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>PUT /api/rest-uri/roles/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-3"><a class="anchor" href="#parameters-3"></a><a class="link" href="#parameters-3">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>payload</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">payload</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_role">Role</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-10"><a class="anchor" href="#responses-10"></a><a class="link" href="#responses-10">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_072aa28c1b3060cb86fefb0e6fcf9406">Resources«Role»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-10"><a class="anchor" href="#consumes-10"></a><a class="link" href="#consumes-10">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-10"><a class="anchor" href="#produces-10"></a><a class="link" href="#produces-10">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_deleteitemresourceusingdelete_1"><a class="anchor" href="#_deleteitemresourceusingdelete_1"></a><a class="link" href="#_deleteitemresourceusingdelete_1">3.3.7. deleteItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>DELETE /api/rest-uri/roles/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-4"><a class="anchor" href="#parameters-4"></a><a class="link" href="#parameters-4">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-11"><a class="anchor" href="#responses-11"></a><a class="link" href="#responses-11">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_072aa28c1b3060cb86fefb0e6fcf9406">Resources«Role»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-11"><a class="anchor" href="#consumes-11"></a><a class="link" href="#consumes-11">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-11"><a class="anchor" href="#produces-11"></a><a class="link" href="#produces-11">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_patchitemresourceusingpatch_1"><a class="anchor" href="#_patchitemresourceusingpatch_1"></a><a class="link" href="#_patchitemresourceusingpatch_1">3.3.8. patchItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>PATCH /api/rest-uri/roles/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-5"><a class="anchor" href="#parameters-5"></a><a class="link" href="#parameters-5">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>payload</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">payload</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_role">Role</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-12"><a class="anchor" href="#responses-12"></a><a class="link" href="#responses-12">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_072aa28c1b3060cb86fefb0e6fcf9406">Resources«Role»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-12"><a class="anchor" href="#consumes-12"></a><a class="link" href="#consumes-12">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-12"><a class="anchor" href="#produces-12"></a><a class="link" href="#produces-12">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_headforitemresourceusinghead_1"><a class="anchor" href="#_headforitemresourceusinghead_1"></a><a class="link" href="#_headforitemresourceusinghead_1">3.3.9. headForItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>HEAD /api/rest-uri/roles/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-6"><a class="anchor" href="#parameters-6"></a><a class="link" href="#parameters-6">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-13"><a class="anchor" href="#responses-13"></a><a class="link" href="#responses-13">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-13"><a class="anchor" href="#consumes-13"></a><a class="link" href="#consumes-13">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-13"><a class="anchor" href="#produces-13"></a><a class="link" href="#produces-13">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_optionsforitemresourceusingoptions_1"><a class="anchor" href="#_optionsforitemresourceusingoptions_1"></a><a class="link" href="#_optionsforitemresourceusingoptions_1">3.3.10. optionsForItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/roles/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-14"><a class="anchor" href="#responses-14"></a><a class="link" href="#responses-14">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-14"><a class="anchor" href="#consumes-14"></a><a class="link" href="#consumes-14">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-14"><a class="anchor" href="#produces-14"></a><a class="link" href="#produces-14">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_role_related_services_resource"><a class="anchor" href="#_role_related_services_resource"></a><a class="link" href="#_role_related_services_resource">3.4. Role Related Services</a></h3>
<div class="paragraph">
<p>Operations with Role Models through Rest</p>
</div>
<div class="sect3">
<h4 id="_getallroleusingget"><a class="anchor" href="#_getallroleusingget"></a><a class="link" href="#_getallroleusingget">3.4.1. List All The Roles</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/role/all</pre>
</div>
</div>
<div class="sect4">
<h5 id="description"><a class="anchor" href="#description"></a><a class="link" href="#description">Description</a></h5>
<div class="paragraph">
<p>It List All The Roles</p>
</div>
</div>
<div class="sect4">
<h5 id="responses-15"><a class="anchor" href="#responses-15"></a><a class="link" href="#responses-15">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-15"><a class="anchor" href="#consumes-15"></a><a class="link" href="#consumes-15">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-15"><a class="anchor" href="#produces-15"></a><a class="link" href="#produces-15">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getuserrolesusingget"><a class="anchor" href="#_getuserrolesusingget"></a><a class="link" href="#_getuserrolesusingget">3.4.2. List All The Users associated to that role</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/role/user/{roleid}</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-2"><a class="anchor" href="#description-2"></a><a class="link" href="#description-2">Description</a></h5>
<div class="paragraph">
<p>It List All The User associated to that role</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-7"><a class="anchor" href="#parameters-7"></a><a class="link" href="#parameters-7">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>roleid</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">roleid</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-16"><a class="anchor" href="#responses-16"></a><a class="link" href="#responses-16">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-16"><a class="anchor" href="#consumes-16"></a><a class="link" href="#consumes-16">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-16"><a class="anchor" href="#produces-16"></a><a class="link" href="#produces-16">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_socket_related_services_resource"><a class="anchor" href="#_socket_related_services_resource"></a><a class="link" href="#_socket_related_services_resource">3.5. Socket Related Services</a></h3>
<div class="paragraph">
<p>Operations with Models through Rest</p>
</div>
<div class="sect3">
<h4 id="_pingsocketusingpost"><a class="anchor" href="#_pingsocketusingpost"></a><a class="link" href="#_pingsocketusingpost">3.5.1. Ping the Websocket User</a></h4>
<div class="literalblock">
<div class="content">
<pre>POST /api/stomp/ping</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-3"><a class="anchor" href="#description-3"></a><a class="link" href="#description-3">Description</a></h5>
<div class="paragraph">
<p>Send Simple Message to All the Connected User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-8"><a class="anchor" href="#parameters-8"></a><a class="link" href="#parameters-8">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>messageToSend</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">messageToSend</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-17"><a class="anchor" href="#responses-17"></a><a class="link" href="#responses-17">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-17"><a class="anchor" href="#consumes-17"></a><a class="link" href="#consumes-17">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-17"><a class="anchor" href="#produces-17"></a><a class="link" href="#produces-17">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_sendtouserusingpost"><a class="anchor" href="#_sendtouserusingpost"></a><a class="link" href="#_sendtouserusingpost">3.5.2. Ping the MQTT User</a></h4>
<div class="literalblock">
<div class="content">
<pre>POST /api/stomp/ping/{userid}</pre>
</div>
</div>
<div class="admonitionblock caution">
<table>
<tr>
<td class="icon">
<i class="fa icon-caution" title="Caution"></i>
</td>
<td class="content">
<div class="paragraph">
<p>operation.deprecated</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect4">
<h5 id="description-4"><a class="anchor" href="#description-4"></a><a class="link" href="#description-4">Description</a></h5>
<div class="paragraph">
<p>Sends Simple Messsage To topic of mqtt User : @This API is DEPRECATED instead Use /api/user/message/{username} Call</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-9"><a class="anchor" href="#parameters-9"></a><a class="link" href="#parameters-9">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>userid</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">userid</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>messageToSend</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">messageToSend</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-18"><a class="anchor" href="#responses-18"></a><a class="link" href="#responses-18">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-18"><a class="anchor" href="#consumes-18"></a><a class="link" href="#consumes-18">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-18"><a class="anchor" href="#produces-18"></a><a class="link" href="#produces-18">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_user_entity_resource"><a class="anchor" href="#_user_entity_resource"></a><a class="link" href="#_user_entity_resource">3.6. User Entity</a></h3>
<div class="paragraph">
<p>Repository Entity Controller</p>
</div>
<div class="sect3">
<h4 id="_postcollectionresourceusingpost_2"><a class="anchor" href="#_postcollectionresourceusingpost_2"></a><a class="link" href="#_postcollectionresourceusingpost_2">3.6.1. postCollectionResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>POST /api/rest-uri/users</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-10"><a class="anchor" href="#parameters-10"></a><a class="link" href="#parameters-10">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>payload</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">payload</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-19"><a class="anchor" href="#responses-19"></a><a class="link" href="#responses-19">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_7cfe2818d2924b9c0f220f9e272581a5">Resource«User»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-19"><a class="anchor" href="#consumes-19"></a><a class="link" href="#consumes-19">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-19"><a class="anchor" href="#produces-19"></a><a class="link" href="#produces-19">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getcollectionresourcecompactusingget_2"><a class="anchor" href="#_getcollectionresourcecompactusingget_2"></a><a class="link" href="#_getcollectionresourcecompactusingget_2">3.6.2. getCollectionResourceCompact</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/users</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-20"><a class="anchor" href="#responses-20"></a><a class="link" href="#responses-20">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_5956193908f022f308de9cdb36ac9a8b">Resources«Link»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-20"><a class="anchor" href="#consumes-20"></a><a class="link" href="#consumes-20">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-20"><a class="anchor" href="#produces-20"></a><a class="link" href="#produces-20">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>text/uri-list</code></p>
</li>
<li>
<p><code>application/x-spring-data-compact+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_headcollectionresourceusinghead_2"><a class="anchor" href="#_headcollectionresourceusinghead_2"></a><a class="link" href="#_headcollectionresourceusinghead_2">3.6.3. headCollectionResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>HEAD /api/rest-uri/users</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-21"><a class="anchor" href="#responses-21"></a><a class="link" href="#responses-21">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-21"><a class="anchor" href="#consumes-21"></a><a class="link" href="#consumes-21">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-21"><a class="anchor" href="#produces-21"></a><a class="link" href="#produces-21">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_optionsforcollectionresourceusingoptions_2"><a class="anchor" href="#_optionsforcollectionresourceusingoptions_2"></a><a class="link" href="#_optionsforcollectionresourceusingoptions_2">3.6.4. optionsForCollectionResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/users</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-22"><a class="anchor" href="#responses-22"></a><a class="link" href="#responses-22">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-22"><a class="anchor" href="#consumes-22"></a><a class="link" href="#consumes-22">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-22"><a class="anchor" href="#produces-22"></a><a class="link" href="#produces-22">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getitemresourceusingget_2"><a class="anchor" href="#_getitemresourceusingget_2"></a><a class="link" href="#_getitemresourceusingget_2">3.6.5. getItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/users/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-11"><a class="anchor" href="#parameters-11"></a><a class="link" href="#parameters-11">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-23"><a class="anchor" href="#responses-23"></a><a class="link" href="#responses-23">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_95c27685fb3786310947ea2de25ecc64">Resources«User»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-23"><a class="anchor" href="#consumes-23"></a><a class="link" href="#consumes-23">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-23"><a class="anchor" href="#produces-23"></a><a class="link" href="#produces-23">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_putitemresourceusingput_2"><a class="anchor" href="#_putitemresourceusingput_2"></a><a class="link" href="#_putitemresourceusingput_2">3.6.6. putItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>PUT /api/rest-uri/users/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-12"><a class="anchor" href="#parameters-12"></a><a class="link" href="#parameters-12">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>payload</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">payload</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-24"><a class="anchor" href="#responses-24"></a><a class="link" href="#responses-24">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_95c27685fb3786310947ea2de25ecc64">Resources«User»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-24"><a class="anchor" href="#consumes-24"></a><a class="link" href="#consumes-24">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-24"><a class="anchor" href="#produces-24"></a><a class="link" href="#produces-24">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_deleteitemresourceusingdelete_2"><a class="anchor" href="#_deleteitemresourceusingdelete_2"></a><a class="link" href="#_deleteitemresourceusingdelete_2">3.6.7. deleteItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>DELETE /api/rest-uri/users/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-13"><a class="anchor" href="#parameters-13"></a><a class="link" href="#parameters-13">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-25"><a class="anchor" href="#responses-25"></a><a class="link" href="#responses-25">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_95c27685fb3786310947ea2de25ecc64">Resources«User»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-25"><a class="anchor" href="#consumes-25"></a><a class="link" href="#consumes-25">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-25"><a class="anchor" href="#produces-25"></a><a class="link" href="#produces-25">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_patchitemresourceusingpatch_2"><a class="anchor" href="#_patchitemresourceusingpatch_2"></a><a class="link" href="#_patchitemresourceusingpatch_2">3.6.8. patchItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>PATCH /api/rest-uri/users/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-14"><a class="anchor" href="#parameters-14"></a><a class="link" href="#parameters-14">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>payload</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">payload</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-26"><a class="anchor" href="#responses-26"></a><a class="link" href="#responses-26">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_95c27685fb3786310947ea2de25ecc64">Resources«User»</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-26"><a class="anchor" href="#consumes-26"></a><a class="link" href="#consumes-26">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-26"><a class="anchor" href="#produces-26"></a><a class="link" href="#produces-26">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_headforitemresourceusinghead_2"><a class="anchor" href="#_headforitemresourceusinghead_2"></a><a class="link" href="#_headforitemresourceusinghead_2">3.6.9. headForItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>HEAD /api/rest-uri/users/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="parameters-15"><a class="anchor" href="#parameters-15"></a><a class="link" href="#parameters-15">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>id</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">id</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-27"><a class="anchor" href="#responses-27"></a><a class="link" href="#responses-27">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-27"><a class="anchor" href="#consumes-27"></a><a class="link" href="#consumes-27">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-27"><a class="anchor" href="#produces-27"></a><a class="link" href="#produces-27">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_optionsforitemresourceusingoptions_2"><a class="anchor" href="#_optionsforitemresourceusingoptions_2"></a><a class="link" href="#_optionsforitemresourceusingoptions_2">3.6.10. optionsForItemResource</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/users/{id}</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-28"><a class="anchor" href="#responses-28"></a><a class="link" href="#responses-28">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-28"><a class="anchor" href="#consumes-28"></a><a class="link" href="#consumes-28">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-28"><a class="anchor" href="#produces-28"></a><a class="link" href="#produces-28">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_user_related_services_resource"><a class="anchor" href="#_user_related_services_resource"></a><a class="link" href="#_user_related_services_resource">3.7. User Related Services</a></h3>
<div class="paragraph">
<p>Operations with User Models through Rest</p>
</div>
<div class="sect3">
<h4 id="_getalluserusingget"><a class="anchor" href="#_getalluserusingget"></a><a class="link" href="#_getalluserusingget">3.7.1. List All The Users</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/user/all</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-5"><a class="anchor" href="#description-5"></a><a class="link" href="#description-5">Description</a></h5>
<div class="paragraph">
<p>It List All The User</p>
</div>
</div>
<div class="sect4">
<h5 id="responses-29"><a class="anchor" href="#responses-29"></a><a class="link" href="#responses-29">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_user">User</a> &gt; array</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-29"><a class="anchor" href="#consumes-29"></a><a class="link" href="#consumes-29">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-29"><a class="anchor" href="#produces-29"></a><a class="link" href="#produces-29">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_userappsusingget"><a class="anchor" href="#_userappsusingget"></a><a class="link" href="#_userappsusingget">3.7.2. Get Roles For the User</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/user/apps/{username}</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-6"><a class="anchor" href="#description-6"></a><a class="link" href="#description-6">Description</a></h5>
<div class="paragraph">
<p>List All The Roles for the User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-16"><a class="anchor" href="#parameters-16"></a><a class="link" href="#parameters-16">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">username</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-30"><a class="anchor" href="#responses-30"></a><a class="link" href="#responses-30">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-30"><a class="anchor" href="#consumes-30"></a><a class="link" href="#consumes-30">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-30"><a class="anchor" href="#produces-30"></a><a class="link" href="#produces-30">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_createuserusingpost"><a class="anchor" href="#_createuserusingpost"></a><a class="link" href="#_createuserusingpost">3.7.3. Create User</a></h4>
<div class="literalblock">
<div class="content">
<pre>POST /api/user/create</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-7"><a class="anchor" href="#description-7"></a><a class="link" href="#description-7">Description</a></h5>
<div class="paragraph">
<p>Creates New User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-17"><a class="anchor" href="#parameters-17"></a><a class="link" href="#parameters-17">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>user</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">user</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-31"><a class="anchor" href="#responses-31"></a><a class="link" href="#responses-31">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-31"><a class="anchor" href="#consumes-31"></a><a class="link" href="#consumes-31">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-31"><a class="anchor" href="#produces-31"></a><a class="link" href="#produces-31">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_deleteuserusingdelete"><a class="anchor" href="#_deleteuserusingdelete"></a><a class="link" href="#_deleteuserusingdelete">3.7.4. Delete User</a></h4>
<div class="literalblock">
<div class="content">
<pre>DELETE /api/user/delete/{username}</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-8"><a class="anchor" href="#description-8"></a><a class="link" href="#description-8">Description</a></h5>
<div class="paragraph">
<p>Delete User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-18"><a class="anchor" href="#parameters-18"></a><a class="link" href="#parameters-18">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">username</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-32"><a class="anchor" href="#responses-32"></a><a class="link" href="#responses-32">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-32"><a class="anchor" href="#consumes-32"></a><a class="link" href="#consumes-32">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-32"><a class="anchor" href="#produces-32"></a><a class="link" href="#produces-32">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_getuserusingget"><a class="anchor" href="#_getuserusingget"></a><a class="link" href="#_getuserusingget">3.7.5. List The User</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/user/find/{username}</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-9"><a class="anchor" href="#description-9"></a><a class="link" href="#description-9">Description</a></h5>
<div class="paragraph">
<p>It List The User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-19"><a class="anchor" href="#parameters-19"></a><a class="link" href="#parameters-19">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">username</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-33"><a class="anchor" href="#responses-33"></a><a class="link" href="#responses-33">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-33"><a class="anchor" href="#consumes-33"></a><a class="link" href="#consumes-33">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-33"><a class="anchor" href="#produces-33"></a><a class="link" href="#produces-33">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_meusingget"><a class="anchor" href="#_meusingget"></a><a class="link" href="#_meusingget">3.7.6. Get The current Logged User</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/user/me</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-10"><a class="anchor" href="#description-10"></a><a class="link" href="#description-10">Description</a></h5>
<div class="paragraph">
<p>Logged User</p>
</div>
</div>
<div class="sect4">
<h5 id="responses-34"><a class="anchor" href="#responses-34"></a><a class="link" href="#responses-34">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-34"><a class="anchor" href="#consumes-34"></a><a class="link" href="#consumes-34">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-34"><a class="anchor" href="#produces-34"></a><a class="link" href="#produces-34">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_meroleusingget"><a class="anchor" href="#_meroleusingget"></a><a class="link" href="#_meroleusingget">3.7.7. Get The current Logged Users Role</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/user/me/role</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-11"><a class="anchor" href="#description-11"></a><a class="link" href="#description-11">Description</a></h5>
<div class="paragraph">
<p>Logged User Role</p>
</div>
</div>
<div class="sect4">
<h5 id="responses-35"><a class="anchor" href="#responses-35"></a><a class="link" href="#responses-35">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">&lt; <a href="#_role">Role</a> &gt; array</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-35"><a class="anchor" href="#consumes-35"></a><a class="link" href="#consumes-35">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-35"><a class="anchor" href="#produces-35"></a><a class="link" href="#produces-35">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_sendmessageusingpost"><a class="anchor" href="#_sendmessageusingpost"></a><a class="link" href="#_sendmessageusingpost">3.7.8. Sends the Message to User</a></h4>
<div class="literalblock">
<div class="content">
<pre>POST /api/user/message/{username}</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-12"><a class="anchor" href="#description-12"></a><a class="link" href="#description-12">Description</a></h5>
<div class="paragraph">
<p>Message to User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-20"><a class="anchor" href="#parameters-20"></a><a class="link" href="#parameters-20">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">username</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>message</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">message</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-36"><a class="anchor" href="#responses-36"></a><a class="link" href="#responses-36">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-36"><a class="anchor" href="#consumes-36"></a><a class="link" href="#consumes-36">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-36"><a class="anchor" href="#produces-36"></a><a class="link" href="#produces-36">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_userroleusingget"><a class="anchor" href="#_userroleusingget"></a><a class="link" href="#_userroleusingget">3.7.9. Get Roles For the User</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/user/role/{username}</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-13"><a class="anchor" href="#description-13"></a><a class="link" href="#description-13">Description</a></h5>
<div class="paragraph">
<p>List All The Roles for the User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-21"><a class="anchor" href="#parameters-21"></a><a class="link" href="#parameters-21">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Path</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>username</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">username</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">string</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-37"><a class="anchor" href="#responses-37"></a><a class="link" href="#responses-37">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-37"><a class="anchor" href="#consumes-37"></a><a class="link" href="#consumes-37">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-37"><a class="anchor" href="#produces-37"></a><a class="link" href="#produces-37">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_updateuserusingput"><a class="anchor" href="#_updateuserusingput"></a><a class="link" href="#_updateuserusingput">3.7.10. Update User</a></h4>
<div class="literalblock">
<div class="content">
<pre>PUT /api/user/update</pre>
</div>
</div>
<div class="sect4">
<h5 id="description-14"><a class="anchor" href="#description-14"></a><a class="link" href="#description-14">Description</a></h5>
<div class="paragraph">
<p>Updates User</p>
</div>
</div>
<div class="sect4">
<h5 id="parameters-22"><a class="anchor" href="#parameters-22"></a><a class="link" href="#parameters-22">Parameters</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 11.1111%;">
<col style="width: 16.6666%;">
<col style="width: 50%;">
<col style="width: 22.2223%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">Type</th>
<th class="tableblock halign-left valign-middle">Name</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>Body</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>user</strong><br>
<em>required</em></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">user</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="responses-38"><a class="anchor" href="#responses-38"></a><a class="link" href="#responses-38">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_user">User</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>201</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Created</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-38"><a class="anchor" href="#consumes-38"></a><a class="link" href="#consumes-38">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-38"><a class="anchor" href="#produces-38"></a><a class="link" href="#produces-38">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_profile-controller_resource"><a class="anchor" href="#_profile-controller_resource"></a><a class="link" href="#_profile-controller_resource">3.8. Profile-controller</a></h3>
<div class="paragraph">
<p>Profile Controller</p>
</div>
<div class="sect3">
<h4 id="_listallformsofmetadatausingget"><a class="anchor" href="#_listallformsofmetadatausingget"></a><a class="link" href="#_listallformsofmetadatausingget">3.8.1. listAllFormsOfMetadata</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/profile</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-39"><a class="anchor" href="#responses-39"></a><a class="link" href="#responses-39">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_resourcesupport">ResourceSupport</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-39"><a class="anchor" href="#consumes-39"></a><a class="link" href="#consumes-39">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-39"><a class="anchor" href="#produces-39"></a><a class="link" href="#produces-39">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_profileoptionsusingoptions"><a class="anchor" href="#_profileoptionsusingoptions"></a><a class="link" href="#_profileoptionsusingoptions">3.8.2. profileOptions</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/profile</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-40"><a class="anchor" href="#responses-40"></a><a class="link" href="#responses-40">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-40"><a class="anchor" href="#consumes-40"></a><a class="link" href="#consumes-40">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-40"><a class="anchor" href="#produces-40"></a><a class="link" href="#produces-40">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code><strong>/</strong></code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_repository-controller_resource"><a class="anchor" href="#_repository-controller_resource"></a><a class="link" href="#_repository-controller_resource">3.9. Repository-controller</a></h3>
<div class="paragraph">
<p>Repository Controller</p>
</div>
<div class="sect3">
<h4 id="_listrepositoriesusingget"><a class="anchor" href="#_listrepositoriesusingget"></a><a class="link" href="#_listrepositoriesusingget">3.9.1. listRepositories</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-41"><a class="anchor" href="#responses-41"></a><a class="link" href="#responses-41">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_repositorylinksresource">RepositoryLinksResource</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-41"><a class="anchor" href="#consumes-41"></a><a class="link" href="#consumes-41">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-41"><a class="anchor" href="#produces-41"></a><a class="link" href="#produces-41">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_headforrepositoriesusinghead"><a class="anchor" href="#_headforrepositoriesusinghead"></a><a class="link" href="#_headforrepositoriesusinghead">3.9.2. headForRepositories</a></h4>
<div class="literalblock">
<div class="content">
<pre>HEAD /api/rest-uri</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-42"><a class="anchor" href="#responses-42"></a><a class="link" href="#responses-42">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-42"><a class="anchor" href="#consumes-42"></a><a class="link" href="#consumes-42">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-42"><a class="anchor" href="#produces-42"></a><a class="link" href="#produces-42">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_optionsforrepositoriesusingoptions"><a class="anchor" href="#_optionsforrepositoriesusingoptions"></a><a class="link" href="#_optionsforrepositoriesusingoptions">3.9.3. optionsForRepositories</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-43"><a class="anchor" href="#responses-43"></a><a class="link" href="#responses-43">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-43"><a class="anchor" href="#consumes-43"></a><a class="link" href="#consumes-43">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-43"><a class="anchor" href="#produces-43"></a><a class="link" href="#produces-43">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_listrepositoriesusingget_1"><a class="anchor" href="#_listrepositoriesusingget_1"></a><a class="link" href="#_listrepositoriesusingget_1">3.9.4. listRepositories</a></h4>
<div class="literalblock">
<div class="content">
<pre>GET /api/rest-uri/</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-44"><a class="anchor" href="#responses-44"></a><a class="link" href="#responses-44">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><a href="#_repositorylinksresource">RepositoryLinksResource</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>404</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Not Found</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-44"><a class="anchor" href="#consumes-44"></a><a class="link" href="#consumes-44">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-44"><a class="anchor" href="#produces-44"></a><a class="link" href="#produces-44">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_headforrepositoriesusinghead_1"><a class="anchor" href="#_headforrepositoriesusinghead_1"></a><a class="link" href="#_headforrepositoriesusinghead_1">3.9.5. headForRepositories</a></h4>
<div class="literalblock">
<div class="content">
<pre>HEAD /api/rest-uri/</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-45"><a class="anchor" href="#responses-45"></a><a class="link" href="#responses-45">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-45"><a class="anchor" href="#consumes-45"></a><a class="link" href="#consumes-45">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-45"><a class="anchor" href="#produces-45"></a><a class="link" href="#produces-45">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_optionsforrepositoriesusingoptions_1"><a class="anchor" href="#_optionsforrepositoriesusingoptions_1"></a><a class="link" href="#_optionsforrepositoriesusingoptions_1">3.9.6. optionsForRepositories</a></h4>
<div class="literalblock">
<div class="content">
<pre>OPTIONS /api/rest-uri/</pre>
</div>
</div>
<div class="sect4">
<h5 id="responses-46"><a class="anchor" href="#responses-46"></a><a class="link" href="#responses-46">Responses</a></h5>
<table class="tableblock frame-all grid-all spread">
<colgroup>
<col style="width: 10%;">
<col style="width: 70%;">
<col style="width: 20%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-middle">HTTP Code</th>
<th class="tableblock halign-left valign-middle">Description</th>
<th class="tableblock halign-left valign-middle">Schema</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>200</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">OK</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">object</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>204</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>401</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Unauthorized</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-middle"><p class="tableblock"><strong>403</strong></p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">Forbidden</p></td>
<td class="tableblock halign-left valign-middle"><p class="tableblock">No Content</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect4">
<h5 id="consumes-46"><a class="anchor" href="#consumes-46"></a><a class="link" href="#consumes-46">Consumes</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
</ul>
</div>
</div>
<div class="sect4">
<h5 id="produces-46"><a class="anchor" href="#produces-46"></a><a class="link" href="#produces-46">Produces</a></h5>
<div class="ulist">
<ul>
<li>
<p><code>application/json</code></p>
</li>
<li>
<p><code>application/hal+json</code></p>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="footer">
<div id="footer-text">
Last updated 2017-04-19 18:49:30 IST
</div>
</div>
</body>
</html>