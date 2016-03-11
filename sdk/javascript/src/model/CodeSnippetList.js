(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define([undefined, '../ApiClient', './CodeSnippet'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(undefined, require('../ApiClient'), require('./CodeSnippet'));
  } else {
    // Browser globals (root is window)
    if (!root.CodeSnipRestApi) {
      root.CodeSnipRestApi = {};
    }
    factory(root.CodeSnipRestApi, root.CodeSnipRestApi.ApiClient, root.CodeSnipRestApi.CodeSnippet);
  }
}(this, function(module, ApiClient, CodeSnippet) {
  'use strict';
  
  
  var CodeSnippetList = function CodeSnippetList() { /* extends null<CodeSnippet>*/
    
  };

  CodeSnippetList.constructFromObject = function(data) {
    if (!data) {
      return null;
    }
    var _this = new CodeSnippetList();
    
    return _this;
  }

  
  
  

  

  if (module) {
    module.CodeSnippetList = CodeSnippetList;
  }

  return CodeSnippetList;
  
  
}));
