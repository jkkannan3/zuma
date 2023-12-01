
var cartItems = [];

function addToCart(itemName, price) {
    var quantity = parseInt(document.getElementsByName("quantity" + cartItems.length)[0].value);
    var itemTotal = price * quantity;
    cartItems.push({ name: itemName, quantity: quantity, total: itemTotal });
}
function clearCartItems() {
    cartItems = [];
}
function Button1_Click() {
    addToCart("Vada", 20, 1);
}
function Button2_Click() {
    addToCart("Vegetable Soup", 50);
}
function Button3_Click() {
    addToCart("Vegetable Momo", 50;
}
function Button4_Click() {
    addToCart("Vegetable Biriyani", 200);
}
function Button5_Click() {
    addToCart("Vegetable Fried Rice", 150);
}
function Button6_Click() {
    addToCart("Veg Meal", 200);
}
function Button7_Click() {
    addToCart("Dosa", 60);
}
function Button8_Click() {
    addToCart("Idly", 15);
}
function Button9_Click() {
    addToCart("Veg Noodles", 90);
}
function Button10_Click() {
    addToCart("Hot Coffee", 30);
}
function Button11_Click() {
    addToCart("Cold Coffee", 40);
}
function Button12_Click() {
    addToCart("Mango Juice", 50);
}

function SubmitButton_Click() {
    console.log(cartItems);
    clearCartItems();
    document.querySelector('form').reset();
}
