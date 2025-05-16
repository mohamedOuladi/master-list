model
  schema 1.1

type user

type org
  relations
    define admin: [user]
    define member: [user]

type tag
  relations
    define owner: [user] 
    define org: [org]
    define can_edit: owner or admin from org
    define can_view: can_edit or member from org

type note
  relations
    define owner: [user]
    define org: [org]
    define can_edit: owner or admin from org
    define can_view: can_edit or member from org