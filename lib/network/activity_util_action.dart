import 'package:firstapp/models/activity_model.dart';
class ActivityUtilAction {
  ActivityUtilAction._();

  static String getActivity(Datum activity) {
    final action = actionValues.reverse[activity.action]; // Action -> String
    final meta = activity.metaData;

    final message = <String, String Function()>{
      'CLIENT_INVITED_TO_AGENT': () {
        final name = meta.user is Map ? (meta.user['name'] ?? 'An Agent') : 'An Agent';
        return "$name has been invited to join";
      },
      'TRANSACTION_AGENT_INVITE_SENT_TO_RECEIVER_AGENT': () {
        final senderName = meta.senderUser?.name ?? 'An agent';
        return 'Agent $senderName has sent you a transaction connection invite. Accept/Decline';
      },
      'VENDOR_REGISTRATION': () => 'A new vendor has registered.',
      'VENDOR_INVITE_SENT_TO_AGENT': () => 'A vendor invite has been sent.',
      'TRANSACTION_CREATE_TO_SELF': () => 'A new transaction was created.',
      'SUB_MILESTONE_DOCUMENT_UPLOADED_SELF': () => 'A document has been uploaded.',
    };
    return message[action]?.call() ?? "You have a new activity.";
  }
}

