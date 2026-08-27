import 'package:firstapp/models/action_model.dart';

class ActivityActionUtil {
  static var list = [
    ActionModel(
      action: 'AGENT_REGISTRATION',
      message: "[Agent Name] has joined C2V",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_INVITATION_DECLINED',
      message: "[Agent Name] has declined invitation to join C2V",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_REGISTRATION_PURCHASE_SUBSCRIPTION_TO_SUPER_ADMIN',
      message: "[Agent Name] has subscribed to [Plan Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITE_SENT_TO_AGENT',
      message: "[Vendor Name] has been invited to join your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_INVITE_SENT_EXISTING_VENDOR_TO_VENDOR',
      message: "[Agent Name] is inviting you to join their network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REGISTRATION_TO_SUPER_ADMIN',
      message: "[Vendor Name] has joined [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REGISTRATION',
      message:
          "[Vendor Name] from [Vendor Company Name] has joined your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REGISTRATION_TO_VENDOR',
      message: "You have joined [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_DECLINED_TO_SUPER_ADMIN',
      message:
          "[Vendor Name] has declined invitation to join [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_DECLINED_TO_VENDOR',
      message: "You have declined to join [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_DECLINED',
      message: "[Vendor Name] has declined invitation to join your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_EXIPRE_TO_AGENT',
      message:
          "[Vendor Name] from [Vendor Company Name]'s invitation to join your network has expired.",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REGISTRATION_TO_SUPER_ADMIN',
      message: "[Vendor Name] has joined C2V",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_DECLINED_TO_SUPER_ADMIN',
      message: "[Vendor Name] has declined invitation to join C2V",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_INVITATION_EXIPRE_TO_AGENT',
      message: "[Vendor Name]'s invitation to join C2V has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_REGISTRATION_PURCHASE_SUBSCRIPTION_TO_SUPER_ADMIN',
      message: "[Vendor Name] has subscribed to [Plan Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_TO_AGENT',
      message:
          "[Vendor Name] from [Vendor Company Name] is requesting to join your Vendor network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_TO_VENDOR',
      message: "You requested to join [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_ACCEPTED_TO_AGENT',
      message:
          "You accepted [Vendor Name] from [Vendor Company Name] in your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_ACCEPTED_TO_VENDOR',
      message: "[Agent Name] accepted your request to join their network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_DECLINED_TO_AGENT',
      message:
          "You declined [Vendor Name] from [Vendor Company Name] in your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_DECLINED_TO_VENDOR',
      message: "[Agent Name] declined your request to join their network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_EXPIRED_TO_VENDOR',
      message: "Your request to join [Agent Name]'s network has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CONNECT_REQUEST_EXPIRED_TO_AGENT',
      message:
          "[Vendor Name] from [Vendor Company Name] request to join your Vendor network has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_INVITED_TO_AGENT',
      message: "[Client Name] has been invited to join",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_REGISTRATION_TO_SUPER_ADMIN',
      message: "[Client Name] has joined [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_REGISTRATION',
      message: "[Client Name] has joined your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_INVITATION_DECLINED_TO_SUPER_ADMIN',
      message:
          "[Client Name] has declined invitation to join [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_INVITATION_DECLINED',
      message: "[Client Name] has declined invitation to join",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_INVITATION_EXPIRED',
      message: "[Client Name]'s invitation to join has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_CREATE_TO_CLIENT',
      message: "New [Buyer Transaction or Seller Transaction] created for [Property Address].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TRANSACTION_CREATE_TO_SELF',
      message: "New [Buyer Transaction or Seller Transaction] created for [Property Address] - [Client Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_ASSIGNED_TASK_TO_VENDOR',
      message:
          "[Agent Name]'s client is requesting your service for '[Task Name]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_ASSIGNED_TASK_TO_VENDOR',
      message: "New request from [Agent Name] for [Task Name].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_TASK_CREATED_TO_AGENT',
      message:
          "[Client Name] is requesting a connection with [Vendor Name] from [Vendor Company Name] for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_ASSIGNED_TASK_TO_SELF',
      message:
          "You requested a connection with [Vendor Name] from [Vendor Company Name] for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_CREATED_CLIENT_TASK_TO_SELF',
      message:
          "[Vendor Name] From [CompanyName] was invited to assist [Client Name] with [Task Name].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_CREATED_CLIENT_TASK',
      message:
          "[Vendor Name] From [Company Name] was invited to help with [Task Name].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'AGENT_TASK_DISCLOSURE_DOC_FOR_REVIEW_TO_CLIENT',
      message:
          "Disclosure available to review for [Vendor Name] from [CompanyName] for [TaskName].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_ACCEPTED_DISCLOSURE_DOC_TO_AGENT',
      message:
          "[Client Name] has accepted the disclosure document for [Vendor Name] from [Vendor Company Name] in [Task Name].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_ACCEPTED_DISCLOSURE_DOC_TO_SELF',
      message:
          "You have accepted the disclosure document for [Vendor Name] from [Vendor Company Name] in [Task Name].",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_DECLINED_DISCLOSURE_DOC_TO_AGENT',
      message:
          "[Client Name] has declined the disclosure document for [Vendor Name] from [Vendor Company Name] in [Task Name]. The connection request has been canceled.",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_DECLINED_DISCLOSURE_DOC_TO_SELF',
      message:
          "You have declined the disclosure document for [Vendor Name] from [Vendor Company Name] in [Task Name]. The connection request has been canceled.",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_DECLINED_DISCLOSURE_DOC_TO_VENDOR',
      message:
          "[Agent Name]’s client no longer needs your service for “[Task Name]” at this time.",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ACCEPT_TASK_TO_CLIENT',
      message:
          "[Vendor Name] from [Vendor Company Name] has accepted your connection request for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ACCEPT_TASK_TO_AGENT',
      message:
          "[Vendor Name] from [Vendor Company Name] has accepted [Client Name]'s connection request for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_ACCEPT_TASK_TO_SELF',
      message:
          "You accepted [Agent Name]'s client, [Client Name]'s connection request for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REJECTED_TASK_TO_CLIENT',
      message:
          "[Vendor Name] from [Vendor Company Name] is unable to service your request for [Task Name] at this time",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REJECTED_TASK_TO_AGENT',
      message:
          "[Vendor Name] from [Vendor Company Name] has declined [Client Name]'s connection request for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_REJECTED_TASK_TO_SELF',
      message:
          "You declined [Agent Name]'s client's connection request for [Task Name]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_REQUEST_EXIPRY_ALERT_TO_VENDOR',
      message:
          "[Agent Name]'s client's connection request for [Task Name] has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'TASK_REQUEST_EXIPRY_ALERT_TO_AGENT',
      message:
          "[Client Name]'s connection request to [Vendor Name] from [Vendor Company Name] for [Task Name] has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_CONFIRMED_YES_DID_VENDOR_CONTACT_YOU_TO_VENDOR',
      message:
          "'[Client Name]' indicated contact from you for '[Task Name]' and your checklist has been updated",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'CLIENT_CONFIRMED_YES_DID_VENDOR_CONTACT_YOU_TO_SELF',
      message:
          "You indicated contact from [Vendor Name] from [Vendor Company Name] for '[Task Name]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_YES_DID_VENDOR_CONTACT_YOU_TO_AGENT",
      message:
          '[Client Name] indicated contact from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_VENDOR_CONTACT_YOU_TO_SELF",
      message:
          'You indicated no contact from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_VENDOR_CONTACT_YOU_TO_VENDOR",
      message: '[Client Name] indicated no contact from you for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_VENDOR_CONTACT_YOU_TO_AGENT",
      message:
          '[Client Name] indicated no contact from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_YOU_CONTACT_CLIENT_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] indicated contact with you for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_YOU_CONTACT_CLIENT_TO_SELF",
      message: 'You indicated contact with [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_YOU_CONTACT_CLIENT_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] indicated contact with [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_YOU_CONTACT_CLIENT_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has indicated no contact with you for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_YOU_CONTACT_CLIENT_TO_SELF",
      message:
          'You indicated no contact has been made with [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_YOU_CONTACT_CLIENT_TO_AGENT",
      message: '[Vendor Name] from [Vendor Company Name] has indicated no contact with [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_YES_DID_VENDOR_SEND_PROPOSAL_TO_VENDOR",
      message:
          '[Client Name] indicated you provided proposal for "[Task Name]" and your checklist has been updated',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_YES_DID_VENDOR_SEND_PROPOSAL_TO_SELF",
      message:
          'You indicated [Vendor Name] from [Vendor Company Name] provided proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_YES_DID_VENDOR_SEND_PROPOSAL_TO_AGENT",
      message:
          '[Client Name] indicated [Vendor Name] from [Vendor Company Name] provided proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_VENDOR_SEND_PROPOSAL_TO_SELF",
      message:
          'You indicated [Vendor Name] from [Vendor Company Name] has not provided a proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_VENDOR_SEND_PROPOSAL_TO_VENDOR",
      message:
          '[Client Name] indicated you have not provided a proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_VENDOR_SEND_PROPOSAL_TO_AGENT",
      message:
          '[Client Name] indicated [Vendor Name] from [Vendor Company Name] has not provided a proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_YOU_SENT_PROPOSAL_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] indicated providing a proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_YOU_SENT_PROPOSAL_TO_SELF",
      message:
          'You indicated providing a proposal to [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_YOU_SENT_PROPOSAL_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] indicated providing a proposal to [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_YOU_SENT_PROPOSAL_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] indicated no proposal was provided for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_YOU_SENT_PROPOSAL_TO_SELF",
      message:
          'You indicated no proposal was provided to [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_YOU_SENT_PROPOSAL_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] indicated no proposal was provided to [Client Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_YES_DID_YOU_ACCEPT_PROPOSAL_TO_VENDOR",
      message:
          '[Client Name] has indicated accepting your proposal for "[Task Name]" and your checklist has been updated',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_YES_DID_YOU_ACCEPT_PROPOSAL_TO_SELF",
      message:
          'You indicated accepting proposal from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_DECLINED_PROPOSAL_TO_VENDOR",
      message:
          '[Client Name] no longer needs your service for "[Task Name]" at this time',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_YOU_ACCEPT_PROPOSAL_TO_SELF",
      message:
          'You indicated you no longer need services from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_CONFIRMED_NO_DID_YOU_ACCEPT_PROPOSAL_TO_AGENT",
      message:
          '[Client Name] indicated they no longer need services from [Vendor Name] from [Vendor Company Name] for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_CLIENT_ACCEPT_PROPOSAL_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has indicated you accepted proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_CLIENT_ACCEPT_PROPOSAL_TO_SELF",
      message:
          'You indicated [Client Name] has accepted proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_YES_DID_CLIENT_ACCEPT_PROPOSAL_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has indicated [Client Name] has accepted proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_CLIENT_ACCEPT_PROPOSAL_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has indicated you did not accept the proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_CLIENT_ACCEPT_PROPOSAL_TO_SELF",
      message:
          'You indicated [Client Name] has not accepted proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CONFIRMED_NO_DID_CLIENT_ACCEPT_PROPOSAL_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has indicated [Client Name] did not accept the proposal for "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_RESOURCE_CLIENT_UPLOADED_TO_SELF",
      message: 'You uploaded a new document in "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_RESOURCE_CLIENT_UPLOADED_TO_AGENT",
      message:
          '[Client Name] has uploaded a new document in "[Task Name]" for [Vendor Name] from [Vendor Company Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_RESOURCE_CLIENT_UPLOADED_TO_VENDOR",
      message: '[Client Name] has uploaded a new document in "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_RESOURCE_UPLOADED_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has uploaded a document for your review in "[Task Name]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_RESOURCE_UPLOADED_TO_VENDOR",
      message:
          'You have uploaded a document to "[Task Name]" for [Client Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_RESOURCE_UPLOADED_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has uploaded a document to "[Task Name]" for [Client Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_CHANGE_SUBSCRIPTION_TO_SELF",
      message:
          'You have successfully changed your subscription plan to [Plan Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: 'VENDOR_CHANGE_SUBSCRIPTION_TO_SUPER_ADMIN',
      message: '[Vendor Name] has changed subscription plan to [Plan Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_UN_SUBSCRIBE_TO_SELF",
      message:
          'You requested to unsubscribe; your account will expire on [Date]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_UN_SUBSCRIBE_TO_SUPER_ADMIN",
      message:
          '[Vendor Name] has canceled the Vendor subscription to C2V and will be effective [Date]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "AGENT_CHANGE_SUBSCRIPTION_TO_SELF",
      message:
          'You have successfully changed your subscription plan to [Plan Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "AGENT_CHANGE_SUBSCRIPTION_TO_SUPER_ADMIN",
      message: '[Agent Name] has changed subscription plan to [Plan Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "AGENT_UN_SUBSCRIBE_TO_SELF",
      message:
          "You requested to unsubscribe; your account will expire on [Date]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "AGENT_SUBSCRIPTION_EXPIRED_TO_VENDOR",
      message: '[Agent Name] is no longer a user on the Client2Vendor platform',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "AGENT_UN_SUBSCRIBE_TO_SUPER_ADMIN",
      message: '[Agent Name] has canceled the subscription to C2V',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_DISASSOCIATE_BY_VENDOR_TO_SELF",
      message:
          'You have successfully removed yourself from "[Agent Name]"s network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_DISASSOCIATE_BY_VENDOR_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] is no longer part of your network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_DISASSOCIATE_BY_AGENT_TO_VENDOR",
      message: "You are no longer part of [Agent Name]'s network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_DISASSOCIATE_BY_AGENT_TO_SELF",
      message:
          'You have successfully removed [Vendor Name] from [Vendor Company Name] from your network',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_DISASSOCIATE_BY_CLIENT_TO_SELF",
      message: "You no longer have access to [Agent Name]'s network of vendors",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_DISASSOCIATE_BY_CLIENT_TO_AGENT",
      message: "[Client Name] has unsubscribed from your network",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "PROMOTIONAL_REMINDER_SUBMITTED_TO_AGENT",
      message:
          '[Vendor Name] from [Vendor Company Name] has submitted a promotion or seasonal reminder titled "[Promotion Title]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "PROMOTIONAL_REMINDER_SUBMITTED_TO_AGENT",
      message:
          'You submitted a promotion or seasonal reminder titled "[Promotion Title]" to [Agent Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "PROMOTIONAL_REMINDER_PUBLISHED_TO_VENDOR",
      message:
          '[Agent Name] has selected 1 or more of their clients and published your promotion "[Promotion Title]" to them',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "PROMOTIONAL_REMINDER_AGENT_PUBLISHED_TO_SELF",
      message:
          'You published "[Promotion Title]" from [Vendor Name] from [Vendor Company Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "PROMOTIONAL_REMINDER_PUBLISHED_TO_CLIENT",
      message:
          '[Vendor Name] from [Vendor Company Name] offers "[Promotion Title]"',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "ADD_VENDOR_TO_BUNDLE_TO_OTHER_VENDOR",
      message:
          '[Vendor Name] from [Vendor Company Name] invited you to join "[bundle Name]".',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "BUNDLE_MEMBER_ACCEPTED_INVITE_TO_ORGANIZER",
      message:
          '[Vendor Name] from [Vendor Company Name] accepted "[bundle Name]" join request.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "BUNDLE_MEMBER_DECLINED_INVITE_TO_ORGANIZER",
      message:
          '[Vendor Name] from [Vendor Company Name] decline "[bundle Name]" join request.',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "MENTIONED_IN_CONNECTION_NOTE_TO_CLIENT",
      message: 'You have been mentioned in [Task Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "MENTIONED_IN_CONNECTION_NOTE_TO_VENDOR:",
      message: 'You have been mentioned in [Task Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "MENTIONED_IN_CONNECTION_NOTE_TO_AGENT:",
      message: 'You have been mentioned in [Task Name]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "VENDOR_BUNDLE_DELETED",
      message: '"[Task Name]" details have been updated',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TASK_REQUEST_EXPIRY_ALERT_TO_VENDOR",
      message:
          'Connection request for "task check vendor ratting" has been expired',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_SENT_TO_RECEIVER_AGENT",
      message:
          'Agent [Sender Name] has sent you a transaction connection invitation for [Receiver Transaction Title]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_SENT_TO_SELF",
      message: '',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_RESENT_TO_AGENT",
      message:
          "[Sender Agent Name] resent transaction connection invitation for '[Receiver Transaction Title]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_ACCEPTED_TO_SENDER_AGENT",
      message:
          '[Receiver Agent Name] accepted your transaction connection invitation for [Sender Transaction Title]',
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_ACCEPTED_BY_SELF",
      message:
          "You accepted transaction connection invitation from [Sender Agent Name] for '[Receiver Transaction Title]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_DECLINED_TO_SENDER_AGENT",
      message:
          "[Receiver Agent Name] declined your transaction connection invitation for '[Sender Transaction Title]",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_DECLINED_BY_SELF",
      message:
          "You declined transaction connection invitation from [Sender Agent Name] for '[Receiver Transaction Title]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_AGENT_INVITE_EXPIRED_TO_SENDER_AGENT",
      message:
          "Your transaction connection invitation to [Receiver Agent Name] for '[Sender Transaction Title]' has expired",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "TRANSACTION_RESOURCE_UPLOADED_TO_CLIENT",
      message:
          "[Vendor Name] uploaded a document for transaction '[Transaction Title]'",
      showAcceptRejectButton: false,
    ),
    ActionModel(
      action: "CLIENT_UPLOAD_RESOURCE_IN_CHAT_SELF",
      message: "You uploaded a document for transaction '[Transaction Title]'",
      showAcceptRejectButton: false,
    ),

  ];
}
