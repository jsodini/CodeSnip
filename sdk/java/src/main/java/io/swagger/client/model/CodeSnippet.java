package io.swagger.client.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen", date = "2016-03-11T02:09:38.462Z")
public class CodeSnippet   {
  
  private String uuid = null;
  private String data = null;
  private Long expires = null;

  
  @ApiModelProperty(example = "null", value = "Code snippet unique identifier.")
  @JsonProperty("uuid")
  public String getUuid() {
    return uuid;
  }

  
  /**
   * Base64 encoded code snippet to store.
   **/
  public CodeSnippet data(String data) {
    this.data = data;
    return this;
  }
  
  @ApiModelProperty(example = "null", value = "Base64 encoded code snippet to store.")
  @JsonProperty("data")
  public String getData() {
    return data;
  }
  public void setData(String data) {
    this.data = data;
  }

  
  /**
   * Expiration time in seconds since epoch (0 will live forever).
   **/
  public CodeSnippet expires(Long expires) {
    this.expires = expires;
    return this;
  }
  
  @ApiModelProperty(example = "null", value = "Expiration time in seconds since epoch (0 will live forever).")
  @JsonProperty("expires")
  public Long getExpires() {
    return expires;
  }
  public void setExpires(Long expires) {
    this.expires = expires;
  }

  

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CodeSnippet codeSnippet = (CodeSnippet) o;
    return Objects.equals(this.uuid, codeSnippet.uuid) &&
        Objects.equals(this.data, codeSnippet.data) &&
        Objects.equals(this.expires, codeSnippet.expires);
  }

  @Override
  public int hashCode() {
    return Objects.hash(uuid, data, expires);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CodeSnippet {\n");
    
    sb.append("    uuid: ").append(toIndentedString(uuid)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    expires: ").append(toIndentedString(expires)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

