require('dotenv').config();
const { BeforeAll, AfterAll, Before, After } = require('@cucumber/cucumber');
const { invokeBrowser } = require('../browser/browserManager'); 

let browser;
let page;

BeforeAll(async function () {
  browser = await invokeBrowser();
});

AfterAll(async function () {
  
  await browser.close();
});

Before(async function () {
  page = await browser.newPage();
  //await page.pause();
});

After(async function () {
  await page.close();
});

module.exports = { getPage: () => page };
