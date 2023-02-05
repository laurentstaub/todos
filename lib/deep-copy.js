const deepCopy = object => {
  if (typeof object !== "object") return object;
  else return JSON.parse(JSON.stringify(object)); 
};

module.exports = deepCopy;