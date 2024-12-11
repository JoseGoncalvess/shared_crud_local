<div align = center>
<h1>shared_crud_local</h1>
  <img alt="Static Badge" src="https://img.shields.io/badge/version-1.0.3-blue?link=https%3A%2F%2Fpub.dev%2Fpackages%2Fshared_crud_local"> <img alt="Static Badge" src="https://img.shields.io/badge/LICENSE-MIT-green?link=https%3A%2F%2Fopensource.org%2Flicense%2Fmit">

</div>

Um package que visa facilitar implementação de um CRUD por meio de métodos mais robustos e fáceis de implementar, lembrando muito o JPA do Java podendo, mas com foco em Strings. Por fazer a uso do [shared_preferences](https://pub.dev/packages/shared_preferences) atende as implementações disposta pelo package.

Recomenda-se a consulta da documentação oficial caso queiro uma implementação a sua maneira [Documentação do shared_preferences](https://pub.dev/packages/shared_preferences).

Esse package foi criado com o intuito de em poucas linhas possa implementar um [CRUD](https://coodesh.com/blog/dicionario/o-que-e-crud/#:~:text=Primeiramente%2C%20CRUD%20%C3%A9%20o%20acr%C3%B4nimo,sua%20m%C3%A1quina%20ou%20na%20nuvem.) sem tantas dores de cabeça.

## Funcionalidades

A recomendação para utilizar esse package é fazer uso das funções de encoding e decoding do próprio Dart, quando podemos transformar objetos é um String JSON, e localmente se consiga armazenar sendo mais prático a criação edição e o carregamento dessas informações.

- CRUD de Objetos e Listas de objetos.

```dart
String  etBilu = '{"nome":"ET BILU", "idade":"3400"}'

List<String> cafes = [
'{"nome":"cuado", "sabor":"Meio Amargo"}',
'{"nome":"Capuchino", "sabot":"Adocicado"}',
'{"nome":"Expresso", "sabor":"encorpado"}'
]
```

## Uso do Package

Adicione o package em seu projeto atentando as versões. Seguindo o passo a passo terá o package totalmente funcional e seu projeto.

No aquivo _pubspec.yaml_ adicione a dependência como vem abaixo ou por meio do comando :

- Manual:

```yaml
dependencies:
  shared_crud_local: 1.0.3
```

- Por meio do pub Dev:

```dart
$ flutter pub add shared_crud_local
```

## Confira as possibilidades atualizadas na guia [Instalação](https://pub.dev/packages/shared_crud_local/install) .

Após essa configuração verifique que o package se encontra nas dependências do projeto, caso esteja tudo ok basta estanciar o Shared_preferences:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedInstance.getInstance(); // ESTANCIA DO SHARED PREFERENCES
  runApp(const MyApp());
}
```

Exemplo de uso com Objetos locais:

```dart
// Salvar(CREATE) Objeto
  LocalRepository repository = LocalRepository();
  void saveInfo() async {
    await repository.save('{"nome":"ET BILU", "idade":"3400"}');
  }

// Carregar (READ) Objeto salvo:
   void loadinfo() async {
    Result response = await repository.load();

    String objeto = response.sucess!  // {"nome":"ET BILU", "idade":"3400"}
  }
```

## Notas sobre a release 1.0.3 :

A versão atual um ponto 1.0.3 acaba de ser criada mas já traz em sua estrutura as principais funcionalidades para você implementar um CRUD básico, podendo já criar de maneira fácil o seu aplicativo sem tanta dor de cabeça.
Esse projeto tem o objetivo de ser algo _opensource_, logo conto também com a sua contribuição caso queira tornar esse package cada vez melhor, Sinta-se à vontade para contribuir lembre-se que o conhecimento compartilhado gera resultados incríveis.

---

### Shared_crud_local desenvolvido por [José Gonçalves](https://github.com/JoseGoncalvess)
