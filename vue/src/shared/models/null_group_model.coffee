import {each} from 'lodash'
import Vue from 'vue'

export default class NullGroupModel
  @singular: 'group'
  @plural: 'groups'

  constructor: ->
    defaults =
      parentId: null
      name: ''
      description: ''
      descriptionFormat: 'html'
      groupPrivacy: 'closed'
      handle: null
      discussionPrivacyOptions: 'public_or_private'
      membershipGrantedUpon: 'approval'
      membersCanAnnounce: true
      membersCanAddMembers: true
      membersCanEditDiscussions: true
      membersCanEditComments: true
      membersCanRaiseMotions: true
      membersCanStartDiscussions: true
      membersCanCreateSubgroups: false
      motionsCanBeEdited: false
      files: []
      imageFiles: []
      attachments: []
      subscription: {active: true}
      specifiedVotersOnly: false

    each defaults, (value, key) =>
      Vue.set(@, key, value)
      true

  poll: -> []
  discussions: -> []
  memberships: -> []
  membershipRequests: -> []
  subgroups: -> []
  parent: -> null
  parentOrSelf: -> @
  group: -> @
  hasSubgroups: -> false
  organisationIds: -> []
  membershipFor: -> null
  members: -> []
  membersInclude: -> false
  adminsInclude: -> false
  adminMemberships: -> []
  admins: -> []
  memberIds: -> []
  adminIds: -> []
  parentName: -> null
  privacyIsOpen: -> false
  privacyIsClosed: -> false
  privacyIsSecret: -> true
  isArchived: -> false
  isParent: -> true
  hasSubscription: -> false
  isSubgroupOfSecretParent: -> false
  hasPendingMembershipRequestFrom: -> false
