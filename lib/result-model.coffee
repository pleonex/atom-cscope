module.exports = 
  class ResultModel
    constructor: (response) ->
      @processResultString(response)
    
    processResultString: (response) ->
      @resultString = response
      data = response.split(" ", 3)
      data.push(response.replace(data.join(" ") + " ", ""))

      @fileName = data[0]
      @functionName = data[1]
      @lineNumber = data[2]
      @lineText = data[3]
      