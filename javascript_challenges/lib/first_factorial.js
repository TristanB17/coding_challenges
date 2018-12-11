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

const multiplyArrayRange = (number) => {
  array = [...Array(number + 1).keys()]
  array.shift()
  return array.reduce((a,b) => a * b)
}

const recursiveSolution = (number) => {
  result = 1
  for(var i = 1; i <= number; i++) {
    result = result * i
  }
  return result;
}

module.exports = {numberToArray, multiplyTogether, combinedMethods, multiplyArrayRange, recursiveSolution}
