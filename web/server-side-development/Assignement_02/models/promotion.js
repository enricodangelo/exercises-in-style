var mongoose = require('mongoose');
var mongoose = require('mongoose-currency').loadType(mongoose);
var Schema = mongoose.Schema;
var Currency = mongoose.Types.Currency;

var promotionSchema = new Schema({
  name: {
    type: String,
    required: true,
    unique: true
  },
  image: {
    type: String,
    required: true
  },
  label: {
    type: String,
    required: true
  },
  price: {
    type: Price,
    required: true
  },
  description: {
    type: String,
    required: true
  }
});
