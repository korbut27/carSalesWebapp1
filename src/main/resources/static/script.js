const basicExample = document.querySelector('.multi-ranges-basic');
const oneRangeValueBasic = document.querySelector('#multi-ranges-basic-value');

const basicExampleInit = new mdb.MultiRangeSlider(basicExample, {
    max: 100,
    min: 0,
});