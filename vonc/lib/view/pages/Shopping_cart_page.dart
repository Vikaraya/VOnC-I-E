import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vonc/common_widget/cart_provider.dart';


class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {

  @override
  Widget build(BuildContext context) {
      final cartProvider = Provider.of<CartProvider>(context);
  final cartItems = cartProvider.items.values.toList();
    return  Scaffold(
      body:  Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Image.network(item.imageUrl),
                    title: Text(item.name),
                    subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            if (item.quantity > 1) {
                              cartProvider.updateQuantity(
                                  item.id, item.quantity - 1);
                            } else {
                              cartProvider.removeItem(item.id);
                            }
                          },
                        ),
                        Text('${item.quantity}'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            cartProvider.updateQuantity(
                                item.id, item.quantity + 1);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:', style: TextStyle(fontSize: 18)),
                    Text(
                      '\$${cartProvider.totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle checkout logic here
                  },
                  child: Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class LivingEssentials_ShoppingCartPage extends StatefulWidget {
  const LivingEssentials_ShoppingCartPage({super.key});

  @override
  State<LivingEssentials_ShoppingCartPage> createState() => _LivingEssentials_ShoppingCartPageState();
}

class _LivingEssentials_ShoppingCartPageState extends State<LivingEssentials_ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
