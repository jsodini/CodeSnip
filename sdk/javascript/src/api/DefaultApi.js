(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['../ApiClient', '../model/CodeSnippet', '../model/CodeSnippetList'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/CodeSnippet'), require('../model/CodeSnippetList'));
  } else {
    // Browser globals (root is window)
    if (!root.CodeSnipRestApi) {
      root.CodeSnipRestApi = {};
    }
    root.CodeSnipRestApi.DefaultApi = factory(root.CodeSnipRestApi.ApiClient, root.CodeSnipRestApi.CodeSnippet, root.CodeSnipRestApi.CodeSnippetList);
  }
}(this, function(ApiClient, CodeSnippet, CodeSnippetList) {
  'use strict';

  var DefaultApi = function DefaultApi(apiClient) {
    this.apiClient = apiClient || ApiClient.default;

    var self = this;
    
    
    /**
     * Creates a code snippet.
     * Creates a code snippet in the specified language.
     * @param {CodeSnippet} opts['codeSnippetBody'] Code snippet object.
     * @param {function} callback the callback function, accepting three arguments: error, data, response
     */
    self.snipPost = function(opts, callback) {
      opts = opts || {};
      var postBody = opts['codeSnippetBody'];
      

      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/snip', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );

    }
    
    /**
     * Retrieves the specified code snippet.
     * Retrieves the specified code snippet.
     * @param {String} codeSnippetUuid Code snippet unique identifier.
     * @param {function} callback the callback function, accepting three arguments: error, data, response
     *   data is of type: CodeSnippet
     */
    self.snipCodeSnippetUuidGet = function(codeSnippetUuid, callback) {
      var postBody = null;
      
      // verify the required parameter 'codeSnippetUuid' is set
      if (codeSnippetUuid == null) {
        throw "Missing the required parameter 'codeSnippetUuid' when calling snipCodeSnippetUuidGet";
      }
      

      var pathParams = {
        'code_snippet_uuid': codeSnippetUuid
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = CodeSnippet;

      return this.apiClient.callApi(
        '/snip/{code_snippet_uuid}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );

    }
    
    /**
     * Updates a code snippet.
     * Updates a code snippet changes.
     * @param {String} codeSnippetUuid Code snippet unique identifier.
     * @param {CodeSnippet} opts['codeSnippetBody'] Code snippet object.
     * @param {function} callback the callback function, accepting three arguments: error, data, response
     */
    self.snipCodeSnippetUuidPut = function(codeSnippetUuid, opts, callback) {
      opts = opts || {};
      var postBody = opts['codeSnippetBody'];
      
      // verify the required parameter 'codeSnippetUuid' is set
      if (codeSnippetUuid == null) {
        throw "Missing the required parameter 'codeSnippetUuid' when calling snipCodeSnippetUuidPut";
      }
      

      var pathParams = {
        'code_snippet_uuid': codeSnippetUuid
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/snip/{code_snippet_uuid}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );

    }
    
    /**
     * Deletes the specified code snippet.
     * Deletes the specified code snippet.
     * @param {String} codeSnippetUuid Code snippet unique identifier.
     * @param {function} callback the callback function, accepting three arguments: error, data, response
     */
    self.snipCodeSnippetUuidDelete = function(codeSnippetUuid, callback) {
      var postBody = null;
      
      // verify the required parameter 'codeSnippetUuid' is set
      if (codeSnippetUuid == null) {
        throw "Missing the required parameter 'codeSnippetUuid' when calling snipCodeSnippetUuidDelete";
      }
      

      var pathParams = {
        'code_snippet_uuid': codeSnippetUuid
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/snip/{code_snippet_uuid}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );

    }
    
    /**
     * Retrieves all code snippets.
     * 
     * @param {function} callback the callback function, accepting three arguments: error, data, response
     *   data is of type: CodeSnippetList
     */
    self.snipsGet = function(callback) {
      var postBody = null;
      

      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = CodeSnippetList;

      return this.apiClient.callApi(
        '/snips', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );

    }
    
    
  };

  return DefaultApi;
}));
