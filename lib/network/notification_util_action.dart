// // class NotificationUtilAction {
// //   NotificationUtilAction._();
// //
// //   static final NotificationUtilAction instance = NotificationUtilAction._();
// //
// //   static String getNotification(Map<String, dynamic> notification, ) {
// //     final action = notification['action'] as String? ?? '';
// //
// //     final metaData = notification['mata_data'] as Map<String, dynamic>? ?? {};
// //
// //     final user = metaData['user'] is Map
// //         ? Map<String, dynamic>.from(metaData['user'])
// //         : <String, dynamic>{};
// //
// //     final client = metaData['client'] is Map
// //         ? Map<String, dynamic>.from(metaData['client'])
// //         : <String, dynamic>{};
// //
// //     final connection = metaData['connection'] is Map
// //         ? Map<String, dynamic>.from(metaData['connection'])
// //         : <String, dynamic>{};
// //
// //     final senderUser = metaData['senderUser'] is Map
// //         ? Map<String, dynamic>.from(metaData['senderUser'])
// //         : <String, dynamic>{};
// //
// //     final resource = metaData['resource'] is Map
// //         ? Map<String, dynamic>.from(metaData['resource'])
// //         : <String, dynamic>{};
// //
// //     final subMilestone = metaData['sub_milestone'] is Map
// //         ? Map<String, dynamic>.from(metaData['sub_milestone'])
// //         : <String, dynamic>{};
// //
// //     final actionMessages = {
// //       'CLIENT_INVITED_TO_AGENT': () {
// //         final name = user['name'] ?? 'A Client';
// //
// //         return '$name invited you as theit agent';
// //       },
// //
// //       'TRANSACTION_CREATE_TO_SELF': () {
// //         final name = user['name'] ?? 'A clinet';
// //         final clientType = connection['client_type_label'] ?? '';
// //
// //         return '$name created a $clientType';
// //       },
// //
// //       'TRANSACTION_AGENT_INVITE_SENT_TO_RECEIVER_AGENT': () {
// //         final clientName = client['name'] ?? 'A client';
// //         final senderName = senderUser['name'] ?? 'An agent';
// //
// //         return '$senderName send you a transaction invitaion for $clientName.';
// //       },
// //       'SUB_MILESTONE_DOCUMENT_UPLOADED_SELF': () {
// //         final connectionTitle = connection['title'] ?? 'a transaction';
// //
// //         final documentName =
// //             resource['label_name'] ?? resource['name'] ?? 'a document';
// //
// //         final milestoneName = subMilestone['name'] ?? '';
// //
// //         if (milestoneName.isNotEmpty) {
// //           return '$documentName was uploaded for $connectionTitle. '
// //               '$milestoneName.';
// //         }
// //
// //         return '$documentName was uploaded for $connectionTitle.';
// //       },
// //     };
// //     final messageBuilder = actionMessages[action];
// //
// //     if (messageBuilder != null) {
// //       return messageBuilder();
// //     }
// //
// //     return 'You have a new notification.';
// //   }
// // }
// import 'package:firstapp/models/notification_model.dart';
//
// class   NotificationUtilAction {
//   NotificationUtilAction._();   // _ underscore means private in dart
//
//   static String getNotification(Datum notification) {
//     final action = notification.action;
//     final meta = notification.metaData;
//
//     final messages = <String, String Function()>{
//
//       'CLIENT_INVITED_TO_AGENT': () {
//         final name = meta.user?.name ?? 'A client';
//         return '$name has been invited to join';
//       },
//     //
//     //   'TRANSACTION_CREATE_TO_SELF': () {
//     //     final name = meta.user?.name ?? 'A client';
//     //     final clientType = _getClientTypeLabel(meta.connection);
//     //     return 'New $name created for $clientType transaction.[Property Address]- [Client Name]';
//     //   },
//     //
//     //   'TRANSACTION_AGENT_INVITE_SENT_TO_RECEIVER_AGENT': () {
//     //     final senderName = meta.senderUser?.name ?? 'An agent';
//     //     final clientName = meta.client?.name ?? 'a client';
//     //     return 'Agent $senderName has sent you a transaction connection invited for [Receiver Transaction Tile ]   Accept/Decline';
//     //   },
//     //
//     //   'SUB_MILESTONE_DOCUMENT_UPLOADED_SELF': () {
//     //     final documentName = 'a document';
//     //     final connectionName = meta.connection?.title ?? 'a transaction';
//     //     return '$documentName was uploaded for $connectionName.';
//     //   },
//     //   'CLIENT_REGISTRATION': () {
//     //     final name = meta.user?.name ?? 'A client';
//     //     return '$name has joined network';
//     //   },
//     };
//
//     return messages[action]?.call() ?? 'You have a new notification.';
//   }
//
//   static String _getClientTypeLabel(Connection? connection) {
//     switch (connection?.clientType) {
//       case ClientType.BUYER_TYPE:
//         return 'Buyer';
//
//       case ClientType.SELLER_TYPE:
//         return 'Seller';
//
//       default:
//         return '';
//     }
//   }
// }
