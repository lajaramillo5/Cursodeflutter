import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:inline/Controller/provider_chat.dart';
import 'package:inline/Model/model_chat.dart';
import 'package:inline/Util/global_color.dart';
import 'package:provider/provider.dart';

class PageChat extends StatelessWidget {
  static const routePage = 'routeChat';
  ProviderChat? providerChat;

  @override
  Widget build(BuildContext context) {
    providerChat = Provider.of<ProviderChat>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('inLINE'),
        backgroundColor: GlobalColor.colorPrincipal,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/image/fondochat.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [containerListChat(context), containerSendChat()],
        ),
      ),
    );
  }

  Widget containerListChat(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: providerChat!.listChat.length,
          itemBuilder: (context, index) {
            return itemChat(context, providerChat!.listChat[index]);
          }),
    );
  }

  Widget itemChat(BuildContext context, ModelChat modelChat) {
    return modelChat.uid == '123'
        ? containerMyChat(modelChat)
        : containerYourChat(modelChat);
  }

  Widget containerMyChat(ModelChat modelChat) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        child: Bubble(
          margin: const BubbleEdges.only(top: 5),
          nip: BubbleNip.rightTop,
          color: GlobalColor.colorMyChat,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(modelChat.text),
              const SizedBox(
                height: 5,
              ),
              Text(
                modelChat.hour,
                style: const TextStyle(color: Colors.black26),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerYourChat(ModelChat modelChat) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        child: Bubble(
          margin: const BubbleEdges.only(top: 5),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(modelChat.text),
              const SizedBox(
                height: 5,
              ),
              Text(
                modelChat.hour,
                style: const TextStyle(color: Colors.black26),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerSendChat() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 50,
        color: Colors.white,
        child: Row(
          children: [
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: TextField(
                  controller: providerChat!.editChat,
                  decoration: const InputDecoration.collapsed(
                      hintText: 'Escribe el mensaje',
                      hintStyle: TextStyle(fontFamily: 'medium')),
                ),
              ),
            ),
            Center(
              child: IconButton(
                  onPressed: () {
                    providerChat!.addChat(
                        ModelChat('123', providerChat!.editChat.text, '17:22'));
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Colors.blueAccent,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
