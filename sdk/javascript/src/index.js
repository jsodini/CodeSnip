(function(factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['./ApiClient', './model/CodeSnippet', './model/CodeSnippetList', './api/DefaultApi'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('./ApiClient'), require('./model/CodeSnippet'), require('./model/CodeSnippetList'), require('./api/DefaultApi'));
  }
}(function(ApiClient, CodeSnippet, CodeSnippetList, DefaultApi) {
  'use strict';

  return {
    ApiClient: ApiClient,
    CodeSnippet: CodeSnippet,
    CodeSnippetList: CodeSnippetList,
    DefaultApi: DefaultApi
  };
}));
