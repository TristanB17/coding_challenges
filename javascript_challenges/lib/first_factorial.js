const numberToArray = (num) => {
  return num.split('').map(Number)
}

const multiplyTogether = (array) => {
  return array.reduce((a, b) => a * b)
}

const combinedMethods = (string) => {
  var integerArray = string.split('').map(Number)
  return integerArray.reduce((a,b) => a * b)
}

module.exports = {numberToArray, multiplyTogether, combinedMethods}
