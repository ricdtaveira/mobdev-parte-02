# 1. Introdução ao Flutter #
## 1.1 Características do Flutter ##
>
Flutter é um framework de desenvolvimento de aplicativos móveis de código aberto, criado 
pelo Google. Ele permite que os desenvolvedores criem aplicativos para iOS, Android, Web 
e Desktop a partir de um único código base.
>
>
O funcionamento do Flutter se baseia em dois principais componentes: o Flutter SDK e 
o Dart, a linguagem de programação utilizada no desenvolvimento de aplicativos com o 
framework. 
>
>
Com o Flutter SDK, os desenvolvedores podem criar widgets personalizados para criar 
interfaces de usuário interativas e responsivas. Já o Dart é uma linguagem orientada 
a objetos que oferece suporte para programação assíncrona e tipagem forte.
>
>
As principais características do Flutter incluem:

1. *Hot Reload*: Permite que os desenvolvedores façam mudanças em tempo real no código, visualizando as alterações na interface do aplicativo sem precisar reiniciar o aplicativo.

1. *Widgets personalizados*: Com o Flutter, os desenvolvedores podem criar widgets 
personalizados para criar interfaces de usuário únicas e interativas.

1. *Desenvolvimento multiplataforma*: O Flutter permite que os desenvolvedores criem 
aplicativos para iOS, Android, Web e Desktop a partir de um único código base.

1. *Performance*: A arquitetura do Flutter é projetada para fornecer alto desempenho 
e interfaces de usuário suaves e responsivas.

1. *Comunidade ativa*: O Flutter possui uma comunidade ativa de desenvolvedores, o que 
significa que há muitos recursos e bibliotecas disponíveis para os desenvolvedores 
utilizarem em seus projetos.
>
>
Resumindo, o Flutter é um framework de desenvolvimento de aplicativos móveis que 
permite aos desenvolvedores criar aplicativos multiplataforma de alto desempenho, 
com uma interface de usuário interativa e responsiva.
>

## 1.2 Widgets ##

>
No Flutter, **widgets** são os blocos de construção fundamentais para a criação de 
interfaces de usuário. 
>
> 
Um **widget** é uma representação visual de um elemento de interface, como um **botão**, 
uma **caixa de texto** ou uma **imagem**, e pode ser um `componente simples` ou `composto`.
>
>
Os widgets são construídos em uma **hierarquia de árvore**, em que cada widget pai 
contém um ou mais widgets filhos. 
>
O Flutter possui dois tipos de widgets: os **StatelessWidgets** e os **StatefulWidgets**.
>
>
Os **StatelessWidget** são widgets que não possuem estado interno e sua interface não muda 
ao longo do tempo, como um ícone ou um texto estático. 
>
Já os **StatefulWidgets** são widgets que podem alterar sua interface de acordo com o 
estado interno, como uma lista que é atualizada com novos itens ou um campo de texto 
que é preenchido pelo usuário.
>
>
Os desenvolvedores podem criar seus próprios widgets personalizados e combiná-los com 
widgets pré-construídos para criar interfaces de usuário complexas e personalizadas. 
>
>
Isso dá uma grande flexibilidade ao desenvolvedor para criar qualquer tipo de interface que ele precise. 
>
Além disso, os widgets no Flutter possuem uma arquitetura eficiente que os torna altamente escaláveis 
e facilmente customizáveis.
>

## 1.3 BLOC ##
>
BLoC (Business Logic Component) no Flutter é um padrão de arquitetura de software que 
permite separar a lógica de negócios de uma aplicação da interface do usuário. 
>
>
Isso permite uma melhor organização do código, facilidade de manutenção e reutilização 
do código em diferentes partes da aplicação.
>
>
A arquitetura BLoC funciona através de três componentes principais: o Stream, o Sink e 
o BLoC.
>
>>
1. **Stream**: é uma sequência de eventos, que em um contexto do Flutter, é usado para 
transmitir eventos da interface do usuário para o BLoC.

1. **Sink**: é o oposto do Stream, ele é usado para adicionar eventos no fluxo de dados, 
que serão processados pelo BLoC.

1. **BLoC**: é a camada intermediária que fica entre a interface do usuário e a camada 
de negócios. Ele recebe eventos (inputs) do usuário por meio do Sink, processa esses eventos e envia para a interface do usuário por meio do Stream, os resultados (outputs).
>>
>
O BLoC é uma classe que contém a lógica de negócios da aplicação e é responsável por 
gerenciar o estado interno da aplicação. 
>
>
Ele recebe eventos da interface do usuário, processa esses eventos, atualiza o 
estado interno e envia atualizações para a interface do usuário.
>
>
Um exemplo de uso da arquitetura BLoC é um aplicativo de lista de tarefas. 
>
>
Nesse exemplo, o BLoC seria responsável por gerenciar as tarefas, adicionar novas 
tarefas, atualizar o status das tarefas e remover tarefas da lista. 
>
>
O usuário interage com a interface do usuário, adicionando novas tarefas, atualizando 
o status das tarefas e removendo tarefas da lista. 
>
Esses eventos são enviados para o BLoC através do Sink, que processa esses eventos e 
atualiza o estado interno do aplicativo. 
>
O BLoC envia atualizações de estado para a interface do usuário através do Stream, que 
atualiza a interface de acordo com o estado atual da aplicação.
>
>
A arquitetura BLoC é uma excelente escolha para projetos maiores e mais complexos, 
pois ajuda a organizar o código e tornar a manutenção mais fácil e escalável. 
>
>
Além disso, a arquitetura BLoC é compatível com outras ferramentas e bibliotecas 
do Flutter, como a biblioteca de gerenciamento de estado Provider.
>

## 1.4 Criação de um Projeto Flutter ##
>
Para criar um projeto Flutter, você precisará seguir os seguintes passos:
>
>>
1. Instalar o **Flutter SDK** em seu sistema operacional: Acesse o site oficial do 
Flutter (https://flutter.dev/docs/get-started/install) e siga as instruções para 
instalar o SDK em seu sistema operacional.

1. **Configurar seu editor de código preferido**: O Flutter é compatível com vários 
editores de código, como o Visual Studio Code, Android Studio e IntelliJ IDEA. 
Você precisará configurar seu editor de código preferido para trabalhar com o Flutter.

1. **Criar um novo projeto Flutter**: Abra o seu editor de código e crie um novo 
projeto Flutter utilizando a linha de comando. Para isso, abra o terminal e execute 
o comando:
```
flutter create nome_do_projeto
```

Esse comando criará um novo projeto Flutter com a estrutura básica de arquivos.

1. Executar o projeto Flutter: Depois de criar o projeto, você pode executá-lo em 
um dispositivo emulado ou em um dispositivo físico. Para executar o projeto, navegue 
até o diretório do projeto e execute o comando:
```
flutter run
```
>>
>
Abaixo, temos um exemplo de código básico em Flutter:
>
> 
```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo Flutter'),
        ),
        body: Center(
          child: Text('Olá, Mundo!'),
        ),
      ),
    );
  }
}
```
>
No código acima a classe **MyApp** é um widget que retorna um **MaterialApp**, que é um 
widget que fornece vários recursos para a criação de interfaces de usuário. 
>
>
O MaterialApp possui um título e um widget principal, que neste caso é um Scaffold, 
que é um widget que fornece uma estrutura básica para uma tela.
>
>
O **Scaffold** possui uma **AppBar**, que é um widget que fornece uma `barra de título` 
para a tela, e um `corpo`, que neste caso é um widget `Center`, que centraliza um widget
`Text` contendo a mensagem "Olá, Mundo!".

Ao executar o projeto, você verá uma tela com uma barra de título contendo o texto 
"Exemplo Flutter" e o texto "Olá, Mundo!" centralizado na tela. 

