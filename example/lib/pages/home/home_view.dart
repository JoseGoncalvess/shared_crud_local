import 'package:example/pages/home/home_view_model.dart';
import 'package:flutter/material.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nomeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text(
              'Resultado das infomações Salvas ${result}',
            ),
            Text(
              '$couter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () => saveinfo(), child: const Icon(Icons.save)),
            ElevatedButton(
                onPressed: () => loadinfo(),
                child: const Icon(Icons.view_carousel_outlined)),
          ],
        ),
      ),
    );
  }
}
