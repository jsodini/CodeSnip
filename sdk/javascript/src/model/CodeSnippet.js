(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define([undefined, '../ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(undefined, require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.CodeSnipRestApi) {
      root.CodeSnipRestApi = {};
    }
    factory(root.CodeSnipRestApi, root.CodeSnipRestApi.ApiClient);
  }
}(this, function(module, ApiClient) {
  'use strict';
  
  
  var CodeSnippet = function CodeSnippet() { 
    
  };

  CodeSnippet.constructFromObject = function(data) {
    if (!data) {
      return null;
    }
    var _this = new CodeSnippet();
    
    if (data['uuid']) {
      _this['uuid'] = ApiClient.convertToType(data['uuid'], 'String');
    }
    
    if (data['data']) {
      _this['data'] = ApiClient.convertToType(data['data'], 'String');
    }
    
    if (data['expires']) {
      _this['expires'] = ApiClient.convertToType(data['expires'], 'Integer');
    }
    
    return _this;
  }

  
  
  /**
   * get Code snippet unique identifier.
   * @return {String}
   **/
  CodeSnippet.prototype.getUuid = function() {
    return this['uuid'];
  }

  /**
   * set Code snippet unique identifier.
   * @param {String} uuid
   **/
  CodeSnippet.prototype.setUuid = function(uuid) {
    this['uuid'] = uuid;
  }
  
  /**
   * get Base64 encoded code snippet to store.
   * @return {String}
   **/
  CodeSnippet.prototype.getData = function() {
    return this['data'];
  }

  /**
   * set Base64 encoded code snippet to store.
   * @param {String} data
   **/
  CodeSnippet.prototype.setData = function(data) {
    this['data'] = data;
  }
  
  /**
   * get Expiration time in seconds since epoch (0 will live forever).
   * @return {Integer}
   **/
  CodeSnippet.prototype.getExpires = function() {
    return this['expires'];
  }

  /**
   * set Expiration time in seconds since epoch (0 will live forever).
   * @param {Integer} expires
   **/
  CodeSnippet.prototype.setExpires = function(expires) {
    this['expires'] = expires;
  }
  
  

  

  if (module) {
    module.CodeSnippet = CodeSnippet;
  }

  return CodeSnippet;
  
  
}));
