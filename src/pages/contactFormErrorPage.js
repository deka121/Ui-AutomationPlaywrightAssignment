const { Page } = require('@playwright/test');
const { BASE_URL } =require('../helper/env/env')

class contactFormErrorPage {
   /**
   * @param {Page} page
   */
  constructor(page) {
    this.page = page;
    this.url = BASE_URL;
    this.submitButton = '#submitContact';
  }

  async submitFormWithAllFieldsBlank() { await this.page.click(this.submitButton);
    //await this.page.pause();
    await this.page.waitForTimeout(2000); }

  async getErrorMessages() {
    await this.page.waitForSelector('.alert.alert-danger p'); // change if your selector is different
    return this.page.$$eval('.alert.alert-danger p', elements =>
      elements.map(element => element.textContent.trim())
    );
}
  
}

module.exports = { contactFormErrorPage };
