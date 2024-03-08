const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '.env') });

const BASE_URL = process.env.BASE_URL;

module.exports = {
  BASE_URL
};
