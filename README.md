<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->
# shared_crud_local

Um package qeu visa facilitar  implemnetação de um crud por meio de metodos mais robustos e faceis de implemnetar, lembrando muito o JPA do Java podendo mas com foco em Strings. Por fazer a uso do [shared_preferences](https://pub.dev/packages/shared_preferences) atende as implemnetações disposta pelo package.

Recomenda-se a consulta da documentação official caso queiro uma implemnetação a sua maneira [ Documentação do shared_preferences](https://pub.dev/packages/shared_preferences). 

Esse package foi criado com o intuido de em poucas linah possa implemnetar um [CRUD](https://coodesh.com/blog/dicionario/o-que-e-crud/#:~:text=Primeiramente%2C%20CRUD%20%C3%A9%20o%20acr%C3%B4nimo,sua%20m%C3%A1quina%20ou%20na%20nuvem.) sem tantas dores de cabeça.

## Funcionalidades

- Possibilidade de Armazenar e Ler Objetos unicos.

- Possibilidade de Armazenar e Ler  Listas de Objetos.
-- 

## Uso do Package
Adicione o package em seu porojeto  atentando as verssões. Seguindo o passo a passo tera o package totalmente funcional e seu projeto. 

No aquivo *pubspec.yaml* adicione a dependencia como vem abaixo ou por meio do comandoa :

- Manual:

```yaml
dependencies:
    shared_crud_local: 1.0.1
```
- Por meio do pub Dev:

```dart
$ flutter pub add shared_crud_local
```

Apos essa configuração verifice que o package se encontra nas dependencia do porjeto, caso esteja tudo ok basta estanciar o Shared preferences:

``` dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedInstance.getInstance(); // ESTANCIA DO SHARED PREFERENCES
  runApp(const MyApp());
}
```

## Additional information


