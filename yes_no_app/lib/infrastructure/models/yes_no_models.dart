
import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModels {
    YesNoModels({
        required this.answer,
        required this.forced,
        required this.image,
    });

    final String answer;
    final bool forced;
    final String image;

    factory YesNoModels.fromJsonMap(Map<String, dynamic> json) => YesNoModels(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message ToMessageEntity() =>Message(
      text:  answer == 'yes' ? 'Si': 'No',
      fromWho:  FromWho.hers,
      imagUrl: image
    );
}
