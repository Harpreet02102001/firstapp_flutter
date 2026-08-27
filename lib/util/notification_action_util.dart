import '../models/action_model.dart';

class NotificationActionUtil {
  static var list = [
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_SENT_TO_SELF",
      message:
          "[Receiver Agent Name] invited to Transaction Name:  [Transaction Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_AGENT_INVITE_ACCEPTED_BY_SELF',
      message:
          "You accepted transaction connection invitation from [Sender Agent Name] for '[Receiver Transaction Title]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_SENT_TO_AGENT",
      message:
          "[Receiver Agent Name] accepted your transaction connection invitation for [Sender Transaction Title]",
      showAcceptRejectButton: false,
    ),

    ActionModel(
      action: 'VENDOR_REGISTRATION',
      message:
          '[Vendor Name] from [Vendor Company Name] has joined your network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_DECLINED',
      message: '[Vendor Name] has declined invitation to join your network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_EXIPRE_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name]s invitation to join your network has expired.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_EXIPRE_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name]s invitation to join your network has expired.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] is requesting to join your vendor network.  Kindly Accept or Decline',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_ACCEPTED_TO_VENDOR',
      message: '[Agent Name] accepted your request to join their network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_DECLINED_TO_VENDOR',
      message: '[Agent Name] declined your request to join their network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_DECLINED_TO_VENDOR',
      message: '[Agent Name] declined your request to join their network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_EXPIRED_TO_VENDOR',
      message: 'Your request to join [Agent Name]s network has expired.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_REGISTRATION',
      message: '[Client Name] has joined your network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_INVITATION_DECLINED',
      message: '[Client Name] has declined invitation to join your network',
      showAcceptRejectButton: false,
    ),

    ActionModel(
      action: 'CLIENT_INVITATION_EXPIRED',
      message: '[Client Name]s invitation to join your network has expired.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_ASSIGNED_TASK_TO_VENDOR',
      message:
          '[Agent Name]s client is requesting your service for "[Task Name]."  Kindly Accept or Decline',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_ASSIGNED_TASK_TO_VENDOR',
      message:
          '[Agent Name]s client is requesting your service for "[Task Name]." Kindly Accept or Decline',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_TASK_CREATED_TO_AGENT',
      message:
          '[Client Name] is requesting a connection with [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_CREATED_CLIENT_TASK',
      message:
          '[Agent Name] has requested [Vendor Name] from [Vendor Company Name] to contact you regarding "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_CREATED_CLIENT_TASK_TO_SELF',
      message:
          'Your request has been sent to [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_ACCEPTED_DISCLOSURE_DOC_TO_AGENT',
      message:
          '[Client Name] has accepted the disclosure document for [Vendor Name] from [Vendor Company Name] in "[Task Name]".',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_DECLINED_DISCLOSURE_DOC_TO_AGENT',
      message:
          '[Client Name] has declined the disclosure document for [Vendor Name] from [Vendor Company Name] in "[Task Name]". The connection request has been canceled.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ACCEPT_TASK_TO_CLIENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has accepted your connection request for "[Task Name]" and will be in contact with you soon',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ACCEPT_TASK_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has accepted [Client Name]s connection request for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REJECTED_TASK_TO_CLIENT',
      message:
          '[Vendor Name] from [Vendor Company Name] is unable to service your request for "[Task Name]" at this time',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REJECTED_TASK_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has declined [Client Name]s connection request for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_REQUEST_BEFORE_EXIPRY_ALERT_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has not responded to [Client Name]s connection request for "[Task Name]."  The connection request link will expire in 48 hours if [Vendor Name] does not accept/decline.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_REQUEST_BEFORE_EXIPRY_ALERT_TO_VENDOR',
      message:
          'FINAL NOTICE [Agent Name]s client is requesting your service for "[Task Name]."  Kindly Accept or Decline',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_REQUEST_EXIPRY_ALERT_TO_AGENT',
      message:
          '[Client Name]s connection request to [Vendor Name] from [Vendor Company Name] for "[Task Name]" has expired',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_VENDOR_CONTACT_YOU_TO_CLIENT',
      message:
          'Did [Vendor Name] from [Vendor Company Name] contact you regarding your "[Task Name]?"  Yes or No',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_YOU_CONTACT_CLIENT_TO_VENDOR',
      message: 'Did you contact [Client Name] for "[Task Name]?"  Yes or No',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_VENDOR_CONTACT_YOU_TO_AGENT',
      message:
          '[Client Name] did not confirm contact from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_VENDOR_SEND_PROPOSAL_TO_CLIENT',
      message:
          'Did you receive a proposal from [Vendor Name] from [Vendor Company Name] for "[Task Name]?"  Yes or No',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_YOU_SEND_PROPOSAL_TO_VENDOR',
      message:
          'Did you send your proposal to [Client Name] for "[Task Name]?"  Yes or No',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_VENDOR_SEND_PROPOSAL_TO_AGENT',
      message:
          '[Client Name] has not confirmed receiving [Vendor Name] from [Vendor Company Name]s proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_YOU_ACCEPT_PROPOSAL_TO_CLIENT',
      message:
          'Did you accept proposal from [Vendor Name] from [Vendor Company Name] for "[Task Name]?"  Yes or No',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_CLIENT_ACCEPTED_PROPOSAL_TO_VENDOR',
      message:
          'Did [Client Name] accept your proposal for "[Task Name]?"  Yes or No',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'CONFIRMATION_DID_YOU_ACCEPT_PROPOSAL_TO_AGENT',
      message:
          '[Client Name] has not accepted or declined [Vendor Name] from [Vendor Company Name]s proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_CONFIRMATION_DISCREPANCY_DID_VENDOR_CONTACT_YOU',
      message:
          '[Vendor Name] from [Vendor Company Name] has confirmed contact with [Client Name] for "[Task Name]"" however [Client Name] has responded "no" to being contacted',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_CONFIRMATION_DISCREPANCY_DID_VENDOR_SEND_PROPOSAL',
      message:
          '[Vendor Name] from [Vendor Company Name] has confirmed sending a proposal to [Client Name] for "[Task Name]," however your client responded that "no" proposal was received',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_CONFIRMATION_DISCREPANCY_DID_CLIENT_ACCEPT_PROPOSAL',
      message:
          '[Vendor Name] from [Vendor Company Name] has confirmed their proposal to [Client Name] for "[Task Name]" was accepted, however your client responded that the proposal was not accepted',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_HAS_ACCEPTED_PROPOSAL_TO_VENDOR',
      message:
          '[Client Name] has indicated accepting your proposal for "[Task Name]" within the task checklist',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_HAS_ACCEPTED_PROPOSAL_TO_AGENT',
      message:
          '[Client Name] has indicated accepting the proposal from [Vendor Name] of [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_DECLINED_PROPOSAL_TO_VENDOR',
      message:
          '[Client Name] no longer needs your service for "[Task Name]" at this time',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_RESOURCE_CLIENT_UPLOADED_TO_VENDOR',
      message: '[Client Name] has uploaded a new document in "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_RESOURCE_CLIENT_UPLOADED_TO_AGENT',
      message:
          '[Client Name] has uploaded a new document in "[Task Name]" for [Vendor Name] from [Vendor Company Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ADDED_RESOURCE_TO_CLIENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has uploaded a document for your review in "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ADDED_RESOURCE_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has uploaded a document to "[Task Name]" for [Client Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_SUBSCRIPTION_EXPIRED_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] is no longer a user on the Client2Vendor platform',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_SUBSCRIPTION_EXPIRED_TO_VENDOR',
      message: '[Agent Name] is no longer a user on the Client2Vendor platform',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_SUBSCRIPTION_EXPIRED_TO_CLIENT',
      message:
          '[Agent Name] is no longer a user, therefore you no longer have access to their network of vendors thru the platform',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_DISCONNECTED_WITH_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] is no longer part of your network on the Client2Vendor platform',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_DISASSOCIATE_BY_AGENT_TO_VENDOR',
      message:
          'You are no longer part of [Agent Name]s network on the Client2Vendor platform',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_DISASSOCIATE_BY_CLIENT_TO_AGENT',
      message: '[Client Name] has unsubscribed from your network.  Thank you!',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'PROMOTIONAL_REMINDER_SUBMITTED_TO_AGENT',
      message:
          '[Vendor Name] from [Vendor Company Name] has submitted a promotion or seasonal reminder titled "[Promotion Title]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'PROMOTIONAL_REMINDER_PUBLISHED_TO_VENDOR',
      message:
          '[Agent Name] has selected 1 or more of their clients and published your promotion "[Promotion Title]" to them',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'PROMOTIONAL_REMINDER_PUBLISHED_TO_CLIENT',
      message:
          '[Agent Name]s top vendor, [Vendor Name] from [Vendor Company Name] wants to offer you an exclusive promotion for their services.  View',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'TRANSACTION_AGENT_INVITE_SENT_TO_RECEIVER_AGENT',
      message:
          'Agent [Sender Name] has sent you a transaction connection invitation for [Receiver Transaction Title]Accept / Decline',
      showAcceptRejectButton: true,
    ),
    ActionModel(
      action: 'TRANSACTION_AGENT_INVITE_RESENT_TO_AGENT',
      message:
          '[Sender Agent Name] has resent their transaction connection invitation for "[Receiver Transaction Title]". Please accept to proceed.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_AGENT_INVITE_ACCEPTED_TO_SENDER_AGENT',
      message:
          '[Receiver Agent Name] has accepted your transaction connection invitation. You can now collaborate on [Sender Transcation Title]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_AGENT_INVITE_DECLINED_TO_SENDER_AGENT',
      message:
          '[Receiver Agent Name] declined your transaction connection invitation for "[Sender Transaction Title]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_AGENT_INVITE_EXPIRED_TO_SENDER_AGENT',
      message:
          'Your transaction connection invitation to [Receiver Agent Name] for "[Sender Transaction Title]" has expired on [Expiration Date].',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_RESOURCE_UPLOADED_TO_TEAM_VENDOR',
      message: '[Send User Name] Uploaded Document for "[Transaction Title]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_RESOURCE_CLIENT_UPLOADED_TO_AGENT_ONLY',
      message:
          'Client has uploaded a new document in "[Transaction Title]". Please review it.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_RESOURCE_VENDOR_UPLOADED_TO_AGENT_ONLY',
      message:
          '[Vendor Name] from [Vendor Company Name} has uploaded a new document in "[Transaction Title]". Please review it.',
      showAcceptRejectButton: false,
    ),
  ];
}
