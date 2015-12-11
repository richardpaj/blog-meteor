@Settings = new Meteor.Collection 'settings'

SettingsSchema = new SimpleSchema
  title:
    type: String,
    label: "Title",
    max: 200
  description:
    type: String,
    label: "Blog description",
    max: 255

Settings.attachSchema SettingsSchema
