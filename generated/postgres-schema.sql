CREATE TABLE audit (
  action TEXT NOT NULL ,
  changes TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  targetEntity TEXT NOT NULL ,
  targetId TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  user TEXT NULL 
);

CREATE TABLE auditchange (
  field TEXT NOT NULL ,
  from TEXT NULL ,
  to TEXT NULL 
);

CREATE TABLE auditconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE auditdeleteresponse (
  action TEXT NULL ,
  changes TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  targetEntity TEXT NULL ,
  targetId TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE auditfilter (
  action TEXT NULL ,
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  targetEntity TEXT NULL ,
  targetId TEXT NULL ,
  updatedAt TEXT NULL ,
  user TEXT NULL 
);

CREATE TABLE auditfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE auditsort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE auditsubscriptionfilter (
  action TEXT NULL ,
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  targetEntity TEXT NULL ,
  targetId TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE authresponse (
  accessToken TEXT NOT NULL ,
  refreshToken TEXT NOT NULL ,
  user TEXT NOT NULL 
);

CREATE TABLE booleanfieldcomparison (
  is TEXT NULL ,
  isNot TEXT NULL 
);

CREATE TABLE checklistitem (
  checked TEXT NOT NULL ,
  title TEXT NOT NULL 
);

CREATE TABLE checklistiteminput (
  checked TEXT NOT NULL ,
  title TEXT NOT NULL 
);

CREATE TABLE company (
  avatarUrl TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  contacts TEXT NOT NULL ,
  contactsAggregate TEXT NOT NULL ,
  country TEXT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  deals TEXT NOT NULL ,
  dealsAggregate TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NOT NULL ,
  notes TEXT NOT NULL ,
  notesAggregate TEXT NOT NULL ,
  salesOwner TEXT NOT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companycontactsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE companycontactsaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE companydealsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE companydealsaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE companynotesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE companynotesaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE companyaggregatefilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companyaggregategroupby (
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companyaggregategroupbycreatedatargs (
  by TEXT NULL 
);

CREATE TABLE companyaggregategroupbyupdatedatargs (
  by TEXT NULL 
);

CREATE TABLE companyaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE companyavgaggregate (
  id TEXT NULL PRIMARY KEY,
  totalRevenue TEXT NULL 
);

CREATE TABLE companybusinesstypefiltercomparison (
  eq TEXT NULL ,
  in TEXT NULL ,
  neq TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE companycompanysizefiltercomparison (
  eq TEXT NULL ,
  in TEXT NULL ,
  neq TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE companyconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE companycontactsaggregategroupby (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companycontactsaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE companycontactsavgaggregate (
  id TEXT NULL PRIMARY KEY,
  score TEXT NULL 
);

CREATE TABLE companycontactsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE companycontactscountaggregate (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companycontactsmaxaggregate (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companycontactsminaggregate (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companycontactssumaggregate (
  id TEXT NULL PRIMARY KEY,
  score TEXT NULL 
);

CREATE TABLE companycountaggregate (
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companycreateinput (
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  industry TEXT NULL ,
  name TEXT NOT NULL ,
  salesOwnerId TEXT NOT NULL ,
  totalRevenue TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companydealsaggregategroupby (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companydealsaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE companydealsavgaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companydealsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE companydealscountaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companydealsmaxaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companydealsminaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companydealssumaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companydeletefilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companydeleteresponse (
  avatarUrl TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companyfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  contacts TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  deals TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  notes TEXT NULL ,
  or TEXT NULL ,
  salesOwner TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companyfiltercompanynotefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companyfiltercontactfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companyfilterdealfilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE companyfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companyindustryfiltercomparison (
  eq TEXT NULL ,
  in TEXT NULL ,
  neq TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE companymaxaggregate (
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companyminaggregate (
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companynote (
  company TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  note TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE companynoteaggregatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companynoteconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE companynotecreateinput (
  companyId TEXT NOT NULL ,
  note TEXT NOT NULL 
);

CREATE TABLE companynotedeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotedeleteresponse (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  note TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotefilter (
  and TEXT NULL ,
  company TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE companynotefiltercompanyfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companynotefilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotesort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE companynotesubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companynoteupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE companynoteupdateinput (
  note TEXT NOT NULL 
);

CREATE TABLE companynotesaggregategroupby (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotesaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE companynotesavgaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE companynotesconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE companynotescountaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotesmaxaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotesminaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE companynotessumaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE companysort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE companysubscriptionfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companysumaggregate (
  id TEXT NULL PRIMARY KEY,
  totalRevenue TEXT NULL 
);

CREATE TABLE companyupdatefilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE companyupdateinput (
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  industry TEXT NULL ,
  name TEXT NULL ,
  salesOwnerId TEXT NULL ,
  totalRevenue TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE contact (
  avatarUrl TEXT NULL ,
  company TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  deals TEXT NOT NULL ,
  email TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NOT NULL ,
  notes TEXT NOT NULL ,
  phone TEXT NULL ,
  salesOwner TEXT NOT NULL ,
  score TEXT NULL ,
  stage TEXT NOT NULL ,
  status TEXT NOT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE contactdealsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE contactnotesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE contactaggregatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE contactcreateinput (
  companyId TEXT NOT NULL ,
  email TEXT NOT NULL ,
  jobTitle TEXT NULL ,
  name TEXT NOT NULL ,
  phone TEXT NULL ,
  salesOwnerId TEXT NOT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL 
);

CREATE TABLE contactdealsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE contactdeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactdeleteresponse (
  avatarUrl TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactfilter (
  and TEXT NULL ,
  company TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  deals TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  notes TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  salesOwner TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE contactfiltercompanyfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE contactfiltercontactnotefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactfilterdealfilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE contactfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnote (
  contact TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  note TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE contactnoteconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE contactnotecreateinput (
  contactId TEXT NOT NULL ,
  note TEXT NOT NULL 
);

CREATE TABLE contactnotedeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnotedeleteresponse (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  note TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnotefilter (
  and TEXT NULL ,
  contact TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE contactnotefiltercontactfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnotefilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnotesort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE contactnotesubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnoteupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactnoteupdateinput (
  note TEXT NOT NULL 
);

CREATE TABLE contactnotesconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE contactsort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE contactstagefiltercomparison (
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  iLike TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  like TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notILike TEXT NULL ,
  notIn TEXT NULL ,
  notLike TEXT NULL 
);

CREATE TABLE contactstatusfiltercomparison (
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  iLike TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  like TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notILike TEXT NULL ,
  notIn TEXT NULL ,
  notLike TEXT NULL 
);

CREATE TABLE contactsubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE contactupdateinput (
  companyId TEXT NULL ,
  email TEXT NULL ,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  salesOwnerId TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL 
);

CREATE TABLE createauditsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createcompanynotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createcompanysubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createcontactnotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createcontactsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createdealstagesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createdealsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createeventcategorysubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createeventsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createmanycompaniesinput (
  companies TEXT NOT NULL 
);

CREATE TABLE createmanycompanynotesinput (
  companyNotes TEXT NOT NULL 
);

CREATE TABLE createmanycontactnotesinput (
  contactNotes TEXT NOT NULL 
);

CREATE TABLE createmanycontactsinput (
  contacts TEXT NOT NULL 
);

CREATE TABLE createmanydealstagesinput (
  dealStages TEXT NOT NULL 
);

CREATE TABLE createmanydealsinput (
  deals TEXT NOT NULL 
);

CREATE TABLE createmanyeventcategoriesinput (
  eventCategories TEXT NOT NULL 
);

CREATE TABLE createmanyeventsinput (
  events TEXT NOT NULL 
);

CREATE TABLE createmanyquotesinput (
  quotes TEXT NOT NULL 
);

CREATE TABLE createmanytaskcommentsinput (
  taskComments TEXT NOT NULL 
);

CREATE TABLE createmanytaskstagesinput (
  taskStages TEXT NOT NULL 
);

CREATE TABLE createmanytasksinput (
  tasks TEXT NOT NULL 
);

CREATE TABLE createmanyusersinput (
  users TEXT NOT NULL 
);

CREATE TABLE createonecompanyinput (
  company TEXT NOT NULL 
);

CREATE TABLE createonecompanynoteinput (
  companyNote TEXT NOT NULL 
);

CREATE TABLE createonecontactinput (
  contact TEXT NOT NULL 
);

CREATE TABLE createonecontactnoteinput (
  contactNote TEXT NOT NULL 
);

CREATE TABLE createonedealinput (
  deal TEXT NOT NULL 
);

CREATE TABLE createonedealstageinput (
  dealStage TEXT NOT NULL 
);

CREATE TABLE createoneeventcategoryinput (
  eventCategory TEXT NOT NULL 
);

CREATE TABLE createoneeventinput (
  event TEXT NOT NULL 
);

CREATE TABLE createonequoteinput (
  quote TEXT NOT NULL 
);

CREATE TABLE createonetaskcommentinput (
  taskComment TEXT NOT NULL 
);

CREATE TABLE createonetaskinput (
  task TEXT NOT NULL 
);

CREATE TABLE createonetaskstageinput (
  taskStage TEXT NOT NULL 
);

CREATE TABLE createoneuserinput (
  user TEXT NOT NULL 
);

CREATE TABLE createquotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createtaskcommentsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createtaskstagesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createtasksubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE createusersubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE datefieldcomparison (
  between TEXT NULL ,
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notBetween TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE datefieldcomparisonbetween (
  lower TEXT NOT NULL ,
  upper TEXT NOT NULL 
);

CREATE TABLE deal (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  company TEXT NOT NULL ,
  companyId TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  dealContact TEXT NOT NULL ,
  dealOwner TEXT NOT NULL ,
  dealOwnerId TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  notes TEXT NOT NULL ,
  stage TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealaggregatefilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealaggregategroupby (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealaggregategroupbycreatedatargs (
  by TEXT NULL 
);

CREATE TABLE dealaggregategroupbyupdatedatargs (
  by TEXT NULL 
);

CREATE TABLE dealaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE dealavgaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE dealcountaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealcreateinput (
  companyId TEXT NOT NULL ,
  dealContactId TEXT NULL ,
  dealOwnerId TEXT NOT NULL ,
  stageId TEXT NULL ,
  title TEXT NOT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealdeletefilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealdeleteresponse (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  notes TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealfilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  company TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  dealContact TEXT NULL ,
  dealOwner TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stage TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealfiltercompanyfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE dealfiltercontactfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealfilterdealstagefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealmaxaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealminaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealsort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE dealstage (
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  deals TEXT NOT NULL ,
  dealsAggregate TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  title TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE dealstagedealsargs (
  filter TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE dealstagedealsaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE dealstageconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE dealstagecreateinput (
  title TEXT NOT NULL 
);

CREATE TABLE dealstagedealsaggregategroupby (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagedealsaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE dealstagedealsavgaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagedealscountaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagedealsmaxaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagedealsminaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagedealssumaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagedeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealstagedeleteresponse (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealstagefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  deals TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE dealstagefilterdealfilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealstagefilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealstagesort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE dealstagesubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealstageupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE dealstageupdateinput (
  stageId TEXT NULL ,
  title TEXT NULL 
);

CREATE TABLE dealsubscriptionfilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealsumaggregate (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealupdatefilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE dealupdateinput (
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  dealContactId TEXT NULL ,
  dealOwnerId TEXT NULL ,
  notes TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE deletemanycompaniesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanycompanynotesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanycontactnotesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanycontactsinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanydealstagesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanydealsinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanyeventcategoriesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanyeventsinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanyquotesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanyresponse (
  deletedCount TEXT NOT NULL 
);

CREATE TABLE deletemanytaskcommentsinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanytaskstagesinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanytasksinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deletemanyusersinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteoneauditsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonecompanyinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonecompanynoteinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonecompanynotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonecompanysubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonecontactinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonecontactnoteinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonecontactnotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonecontactsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonedealinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonedealstageinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonedealstagesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonedealsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteoneeventcategoryinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteoneeventcategorysubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteoneeventinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteoneeventsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonequoteinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonequotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonetaskcommentinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonetaskcommentsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonetaskinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonetaskstageinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteonetaskstagesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteonetasksubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE deleteoneuserinput (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE deleteoneusersubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE event (
  category TEXT NOT NULL ,
  color TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  description TEXT NOT NULL ,
  endDate TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  participants TEXT NOT NULL ,
  startDate TEXT NOT NULL ,
  title TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE eventparticipantsargs (
  filter TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE eventcategory (
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  events TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  title TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE eventcategoryeventsargs (
  filter TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE eventcategoryconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE eventcategorycreateinput (
  title TEXT NOT NULL 
);

CREATE TABLE eventcategorydeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventcategorydeleteresponse (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventcategoryfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE eventcategoryfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventcategorysort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE eventcategorysubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventcategoryupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventcategoryupdateinput (
  title TEXT NOT NULL 
);

CREATE TABLE eventconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE eventcreateinput (
  categoryId TEXT NOT NULL ,
  color TEXT NOT NULL ,
  description TEXT NOT NULL ,
  endDate TEXT NOT NULL ,
  participantIds TEXT NOT NULL ,
  startDate TEXT NOT NULL ,
  title TEXT NOT NULL 
);

CREATE TABLE eventdeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  startDate TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventdeleteresponse (
  color TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  startDate TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventfilter (
  and TEXT NULL ,
  category TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  startDate TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE eventfiltereventcategoryfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventsort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE eventsubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  startDate TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  startDate TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE eventupdateinput (
  categoryId TEXT NULL ,
  color TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  participantIds TEXT NULL ,
  startDate TEXT NULL ,
  title TEXT NULL 
);

CREATE TABLE floatfieldcomparison (
  between TEXT NULL ,
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notBetween TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE floatfieldcomparisonbetween (
  lower TEXT NOT NULL ,
  upper TEXT NOT NULL 
);

CREATE TABLE idfiltercomparison (
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  iLike TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  like TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notILike TEXT NULL ,
  notIn TEXT NULL ,
  notLike TEXT NULL 
);

CREATE TABLE intfieldcomparison (
  between TEXT NULL ,
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notBetween TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE intfieldcomparisonbetween (
  lower TEXT NOT NULL ,
  upper TEXT NOT NULL 
);

CREATE TABLE logininput (
  email TEXT NOT NULL 
);

CREATE TABLE mutation (
  createManyCompanies TEXT NOT NULL ,
  createManyCompanyNotes TEXT NOT NULL ,
  createManyContactNotes TEXT NOT NULL ,
  createManyContacts TEXT NOT NULL ,
  createManyDealStages TEXT NOT NULL ,
  createManyDeals TEXT NOT NULL ,
  createManyEventCategories TEXT NOT NULL ,
  createManyEvents TEXT NOT NULL ,
  createManyQuotes TEXT NOT NULL ,
  createManyTaskComments TEXT NOT NULL ,
  createManyTaskStages TEXT NOT NULL ,
  createManyTasks TEXT NOT NULL ,
  createManyUsers TEXT NOT NULL ,
  createOneCompany TEXT NOT NULL ,
  createOneCompanyNote TEXT NOT NULL ,
  createOneContact TEXT NOT NULL ,
  createOneContactNote TEXT NOT NULL ,
  createOneDeal TEXT NOT NULL ,
  createOneDealStage TEXT NOT NULL ,
  createOneEvent TEXT NOT NULL ,
  createOneEventCategory TEXT NOT NULL ,
  createOneQuote TEXT NOT NULL ,
  createOneTask TEXT NOT NULL ,
  createOneTaskComment TEXT NOT NULL ,
  createOneTaskStage TEXT NOT NULL ,
  createOneUser TEXT NOT NULL ,
  deleteManyCompanies TEXT NOT NULL ,
  deleteManyCompanyNotes TEXT NOT NULL ,
  deleteManyContactNotes TEXT NOT NULL ,
  deleteManyContacts TEXT NOT NULL ,
  deleteManyDealStages TEXT NOT NULL ,
  deleteManyDeals TEXT NOT NULL ,
  deleteManyEventCategories TEXT NOT NULL ,
  deleteManyEvents TEXT NOT NULL ,
  deleteManyQuotes TEXT NOT NULL ,
  deleteManyTaskComments TEXT NOT NULL ,
  deleteManyTaskStages TEXT NOT NULL ,
  deleteManyTasks TEXT NOT NULL ,
  deleteManyUsers TEXT NOT NULL ,
  deleteOneCompany TEXT NOT NULL ,
  deleteOneCompanyNote TEXT NOT NULL ,
  deleteOneContact TEXT NOT NULL ,
  deleteOneContactNote TEXT NOT NULL ,
  deleteOneDeal TEXT NOT NULL ,
  deleteOneDealStage TEXT NOT NULL ,
  deleteOneEvent TEXT NOT NULL ,
  deleteOneEventCategory TEXT NOT NULL ,
  deleteOneQuote TEXT NOT NULL ,
  deleteOneTask TEXT NOT NULL ,
  deleteOneTaskComment TEXT NOT NULL ,
  deleteOneTaskStage TEXT NOT NULL ,
  deleteOneUser TEXT NOT NULL ,
  login TEXT NOT NULL ,
  refreshToken TEXT NOT NULL ,
  register TEXT NOT NULL ,
  updateManyCompanies TEXT NOT NULL ,
  updateManyCompanyNotes TEXT NOT NULL ,
  updateManyContactNotes TEXT NOT NULL ,
  updateManyContacts TEXT NOT NULL ,
  updateManyDealStages TEXT NOT NULL ,
  updateManyDeals TEXT NOT NULL ,
  updateManyEventCategories TEXT NOT NULL ,
  updateManyEvents TEXT NOT NULL ,
  updateManyQuotes TEXT NOT NULL ,
  updateManyTaskComments TEXT NOT NULL ,
  updateManyTaskStages TEXT NOT NULL ,
  updateManyTasks TEXT NOT NULL ,
  updateManyUsers TEXT NOT NULL ,
  updateOneCompany TEXT NOT NULL ,
  updateOneCompanyNote TEXT NOT NULL ,
  updateOneContact TEXT NOT NULL ,
  updateOneContactNote TEXT NOT NULL ,
  updateOneDeal TEXT NOT NULL ,
  updateOneDealStage TEXT NOT NULL ,
  updateOneEvent TEXT NOT NULL ,
  updateOneEventCategory TEXT NOT NULL ,
  updateOneQuote TEXT NOT NULL ,
  updateOneTask TEXT NOT NULL ,
  updateOneTaskComment TEXT NOT NULL ,
  updateOneTaskStage TEXT NOT NULL ,
  updateOneUser TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanycompaniesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanycompanynotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanycontactnotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanycontactsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanydealstagesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanydealsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanyeventcategoriesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanyeventsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanyquotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanytaskcommentsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanytaskstagesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanytasksargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreatemanyusersargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonecompanyargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonecompanynoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonecontactargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonecontactnoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonedealargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonedealstageargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateoneeventargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateoneeventcategoryargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonequoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonetaskargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonetaskcommentargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateonetaskstageargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationcreateoneuserargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanycompaniesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanycompanynotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanycontactnotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanycontactsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanydealstagesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanydealsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanyeventcategoriesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanyeventsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanyquotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanytaskcommentsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanytaskstagesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanytasksargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeletemanyusersargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonecompanyargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonecompanynoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonecontactargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonecontactnoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonedealargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonedealstageargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteoneeventargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteoneeventcategoryargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonequoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonetaskargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonetaskcommentargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteonetaskstageargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationdeleteoneuserargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationloginargs (
  loginInput TEXT NOT NULL 
);

CREATE TABLE mutationrefreshtokenargs (
  refreshToken TEXT NOT NULL 
);

CREATE TABLE mutationregisterargs (
  registerInput TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanycompaniesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanycompanynotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanycontactnotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanycontactsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanydealstagesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanydealsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanyeventcategoriesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanyeventsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanyquotesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanytaskcommentsargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanytaskstagesargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanytasksargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdatemanyusersargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonecompanyargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonecompanynoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonecontactargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonecontactnoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonedealargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonedealstageargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateoneeventargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateoneeventcategoryargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonequoteargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonetaskargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonetaskcommentargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateonetaskstageargs (
  input TEXT NOT NULL 
);

CREATE TABLE mutationupdateoneuserargs (
  input TEXT NOT NULL 
);

CREATE TABLE numberfieldcomparison (
  between TEXT NULL ,
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notBetween TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE numberfieldcomparisonbetween (
  lower TEXT NOT NULL ,
  upper TEXT NOT NULL 
);

CREATE TABLE offsetpageinfo (
  hasNextPage TEXT NULL ,
  hasPreviousPage TEXT NULL 
);

CREATE TABLE offsetpaging (
  limit TEXT NULL ,
  offset TEXT NULL 
);

CREATE TABLE query (
  audit TEXT NOT NULL ,
  audits TEXT NOT NULL ,
  companies TEXT NOT NULL ,
  company TEXT NOT NULL ,
  companyAggregate TEXT NOT NULL ,
  companyNote TEXT NOT NULL ,
  companyNotes TEXT NOT NULL ,
  contact TEXT NOT NULL ,
  contactNote TEXT NOT NULL ,
  contactNotes TEXT NOT NULL ,
  contacts TEXT NOT NULL ,
  deal TEXT NOT NULL ,
  dealAggregate TEXT NOT NULL ,
  dealStage TEXT NOT NULL ,
  dealStages TEXT NOT NULL ,
  deals TEXT NOT NULL ,
  event TEXT NOT NULL ,
  eventCategories TEXT NOT NULL ,
  eventCategory TEXT NOT NULL ,
  events TEXT NOT NULL ,
  me TEXT NOT NULL ,
  quote TEXT NOT NULL ,
  quotes TEXT NOT NULL ,
  task TEXT NOT NULL ,
  taskAggregate TEXT NOT NULL ,
  taskComment TEXT NOT NULL ,
  taskComments TEXT NOT NULL ,
  taskStage TEXT NOT NULL ,
  taskStageAggregate TEXT NOT NULL ,
  taskStages TEXT NOT NULL ,
  tasks TEXT NOT NULL ,
  user TEXT NOT NULL ,
  users TEXT NOT NULL 
);

CREATE TABLE queryauditargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE queryauditsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querycompaniesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querycompanyargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querycompanyaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE querycompanynoteargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querycompanynotesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querycontactargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querycontactnoteargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querycontactnotesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querycontactsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querydealargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querydealaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE querydealstageargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querydealstagesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querydealsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE queryeventargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE queryeventcategoriesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE queryeventcategoryargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE queryeventsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE queryquoteargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE queryquotesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querytaskargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querytaskaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE querytaskcommentargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querytaskcommentsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querytaskstageargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE querytaskstageaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE querytaskstagesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE querytasksargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE queryuserargs (
  id TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE queryusersargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE quote (
  company TEXT NOT NULL ,
  contact TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  description TEXT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  items TEXT NOT NULL ,
  salesOwner TEXT NOT NULL ,
  status TEXT NOT NULL ,
  subTotal TEXT NOT NULL ,
  tax TEXT NOT NULL ,
  title TEXT NOT NULL ,
  total TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE quoteconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE quotecreateinput (
  companyId TEXT NOT NULL ,
  contactId TEXT NOT NULL ,
  salesOwnerId TEXT NOT NULL ,
  title TEXT NOT NULL 
);

CREATE TABLE quotedeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  status TEXT NULL ,
  title TEXT NULL ,
  total TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE quotedeleteresponse (
  createdAt TEXT NULL ,
  description TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  items TEXT NULL ,
  status TEXT NULL ,
  subTotal TEXT NULL ,
  tax TEXT NULL ,
  title TEXT NULL ,
  total TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE quotefilter (
  and TEXT NULL ,
  company TEXT NULL ,
  contact TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  salesOwner TEXT NULL ,
  status TEXT NULL ,
  title TEXT NULL ,
  total TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE quotefiltercompanyfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE quotefiltercontactfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE quotefilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE quoteitem (
  discount TEXT NOT NULL ,
  quantity TEXT NOT NULL ,
  title TEXT NOT NULL ,
  totalPrice TEXT NOT NULL ,
  unitPrice TEXT NOT NULL 
);

CREATE TABLE quoteiteminput (
  discount TEXT NOT NULL ,
  quantity TEXT NOT NULL ,
  title TEXT NOT NULL ,
  unitPrice TEXT NOT NULL 
);

CREATE TABLE quotesort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE quotestatusfiltercomparison (
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  iLike TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  like TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notILike TEXT NULL ,
  notIn TEXT NULL ,
  notLike TEXT NULL 
);

CREATE TABLE quotesubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  status TEXT NULL ,
  title TEXT NULL ,
  total TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE quoteupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  status TEXT NULL ,
  title TEXT NULL ,
  total TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE quoteupdateinput (
  companyId TEXT NULL ,
  contactId TEXT NULL ,
  description TEXT NULL ,
  items TEXT NULL ,
  salesOwnerId TEXT NULL ,
  status TEXT NULL ,
  tax TEXT NULL ,
  title TEXT NULL 
);

CREATE TABLE registerinput (
  email TEXT NOT NULL ,
  password TEXT NOT NULL 
);

CREATE TABLE stringfieldcomparison (
  eq TEXT NULL ,
  gt TEXT NULL ,
  gte TEXT NULL ,
  iLike TEXT NULL ,
  in TEXT NULL ,
  is TEXT NULL ,
  isNot TEXT NULL ,
  like TEXT NULL ,
  lt TEXT NULL ,
  lte TEXT NULL ,
  neq TEXT NULL ,
  notILike TEXT NULL ,
  notIn TEXT NULL ,
  notLike TEXT NULL 
);

CREATE TABLE subscription (
  createdAudit TEXT NOT NULL ,
  createdCompany TEXT NOT NULL ,
  createdCompanyNote TEXT NOT NULL ,
  createdContact TEXT NOT NULL ,
  createdContactNote TEXT NOT NULL ,
  createdDeal TEXT NOT NULL ,
  createdDealStage TEXT NOT NULL ,
  createdEvent TEXT NOT NULL ,
  createdEventCategory TEXT NOT NULL ,
  createdQuote TEXT NOT NULL ,
  createdTask TEXT NOT NULL ,
  createdTaskComment TEXT NOT NULL ,
  createdTaskStage TEXT NOT NULL ,
  createdUser TEXT NOT NULL ,
  deletedManyAudits TEXT NOT NULL ,
  deletedManyCompanies TEXT NOT NULL ,
  deletedManyCompanyNotes TEXT NOT NULL ,
  deletedManyContactNotes TEXT NOT NULL ,
  deletedManyContacts TEXT NOT NULL ,
  deletedManyDealStages TEXT NOT NULL ,
  deletedManyDeals TEXT NOT NULL ,
  deletedManyEventCategories TEXT NOT NULL ,
  deletedManyEvents TEXT NOT NULL ,
  deletedManyQuotes TEXT NOT NULL ,
  deletedManyTaskComments TEXT NOT NULL ,
  deletedManyTaskStages TEXT NOT NULL ,
  deletedManyTasks TEXT NOT NULL ,
  deletedManyUsers TEXT NOT NULL ,
  deletedOneAudit TEXT NOT NULL ,
  deletedOneCompany TEXT NOT NULL ,
  deletedOneCompanyNote TEXT NOT NULL ,
  deletedOneContact TEXT NOT NULL ,
  deletedOneContactNote TEXT NOT NULL ,
  deletedOneDeal TEXT NOT NULL ,
  deletedOneDealStage TEXT NOT NULL ,
  deletedOneEvent TEXT NOT NULL ,
  deletedOneEventCategory TEXT NOT NULL ,
  deletedOneQuote TEXT NOT NULL ,
  deletedOneTask TEXT NOT NULL ,
  deletedOneTaskComment TEXT NOT NULL ,
  deletedOneTaskStage TEXT NOT NULL ,
  deletedOneUser TEXT NOT NULL ,
  updatedManyAudits TEXT NOT NULL ,
  updatedManyCompanies TEXT NOT NULL ,
  updatedManyCompanyNotes TEXT NOT NULL ,
  updatedManyContactNotes TEXT NOT NULL ,
  updatedManyContacts TEXT NOT NULL ,
  updatedManyDealStages TEXT NOT NULL ,
  updatedManyDeals TEXT NOT NULL ,
  updatedManyEventCategories TEXT NOT NULL ,
  updatedManyEvents TEXT NOT NULL ,
  updatedManyQuotes TEXT NOT NULL ,
  updatedManyTaskComments TEXT NOT NULL ,
  updatedManyTaskStages TEXT NOT NULL ,
  updatedManyTasks TEXT NOT NULL ,
  updatedManyUsers TEXT NOT NULL ,
  updatedOneAudit TEXT NOT NULL ,
  updatedOneCompany TEXT NOT NULL ,
  updatedOneCompanyNote TEXT NOT NULL ,
  updatedOneContact TEXT NOT NULL ,
  updatedOneContactNote TEXT NOT NULL ,
  updatedOneDeal TEXT NOT NULL ,
  updatedOneDealStage TEXT NOT NULL ,
  updatedOneEvent TEXT NOT NULL ,
  updatedOneEventCategory TEXT NOT NULL ,
  updatedOneQuote TEXT NOT NULL ,
  updatedOneTask TEXT NOT NULL ,
  updatedOneTaskComment TEXT NOT NULL ,
  updatedOneTaskStage TEXT NOT NULL ,
  updatedOneUser TEXT NOT NULL 
);

CREATE TABLE subscriptioncreatedauditargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedcompanyargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedcompanynoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedcontactargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedcontactnoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreateddealargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreateddealstageargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedeventargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedeventcategoryargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedquoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedtaskargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedtaskcommentargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreatedtaskstageargs (
  input TEXT NULL 
);

CREATE TABLE subscriptioncreateduserargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedoneauditargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonecompanyargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonecompanynoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonecontactargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonecontactnoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonedealargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonedealstageargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedoneeventargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedoneeventcategoryargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonequoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonetaskargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonetaskcommentargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedonetaskstageargs (
  input TEXT NULL 
);

CREATE TABLE subscriptiondeletedoneuserargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedoneauditargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonecompanyargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonecompanynoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonecontactargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonecontactnoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonedealargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonedealstageargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedoneeventargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedoneeventcategoryargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonequoteargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonetaskargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonetaskcommentargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedonetaskstageargs (
  input TEXT NULL 
);

CREATE TABLE subscriptionupdatedoneuserargs (
  input TEXT NULL 
);

CREATE TABLE task (
  checklist TEXT NOT NULL ,
  comments TEXT NOT NULL ,
  commentsAggregate TEXT NOT NULL ,
  completed TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  stage TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL ,
  users TEXT NOT NULL ,
  usersAggregate TEXT NOT NULL 
);

CREATE TABLE taskcommentsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE taskcommentsaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE taskusersargs (
  filter TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE taskusersaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE taskaggregatefilter (
  and TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskaggregategroupby (
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskaggregategroupbycreatedatargs (
  by TEXT NULL 
);

CREATE TABLE taskaggregategroupbyduedateargs (
  by TEXT NULL 
);

CREATE TABLE taskaggregategroupbyupdatedatargs (
  by TEXT NULL 
);

CREATE TABLE taskaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE taskavgaggregate (
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL 
);

CREATE TABLE taskcomment (
  comment TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  task TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE taskcommentaggregatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE taskcommentcreateinput (
  comment TEXT NOT NULL ,
  taskId TEXT NOT NULL 
);

CREATE TABLE taskcommentdeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentdeleteresponse (
  comment TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  task TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE taskcommentfiltertaskfilter (
  and TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentsort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE taskcommentsubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentupdateinput (
  comment TEXT NOT NULL 
);

CREATE TABLE taskcommentsaggregategroupby (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentsaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE taskcommentsavgaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE taskcommentsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE taskcommentscountaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentsmaxaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentsminaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcommentssumaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE taskconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE taskcountaggregate (
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskcreateinput (
  checklist TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NOT NULL ,
  userIds TEXT NULL 
);

CREATE TABLE taskdeletefilter (
  and TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskdeleteresponse (
  checklist TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskfilter (
  and TEXT NULL ,
  comments TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stage TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE taskfiltertaskcommentfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskfiltertaskstagefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskmaxaggregate (
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskminaggregate (
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE tasksort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE taskstage (
  createdAt TEXT NOT NULL ,
  createdBy TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  tasks TEXT NOT NULL ,
  tasksAggregate TEXT NOT NULL ,
  title TEXT NOT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE taskstagetasksargs (
  filter TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE taskstagetasksaggregateargs (
  filter TEXT NULL 
);

CREATE TABLE taskstageaggregatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstageaggregategroupby (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstageaggregategroupbycreatedatargs (
  by TEXT NULL 
);

CREATE TABLE taskstageaggregategroupbyupdatedatargs (
  by TEXT NULL 
);

CREATE TABLE taskstageaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE taskstageavgaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE taskstageconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE taskstagecountaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagecreateinput (
  title TEXT NOT NULL 
);

CREATE TABLE taskstagedeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagedeleteresponse (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE taskstagefilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagemaxaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstageminaggregate (
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagesort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE taskstagesubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagesumaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE taskstagetasksaggregategroupby (
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagetasksaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE taskstagetasksavgaggregate (
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL 
);

CREATE TABLE taskstagetaskscountaggregate (
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagetasksmaxaggregate (
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagetasksminaggregate (
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstagetaskssumaggregate (
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL 
);

CREATE TABLE taskstageupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskstageupdateinput (
  title TEXT NOT NULL 
);

CREATE TABLE tasksubscriptionfilter (
  and TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE tasksumaggregate (
  id TEXT NULL PRIMARY KEY,
  stageId TEXT NULL 
);

CREATE TABLE taskupdatefilter (
  and TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskupdateinput (
  checklist TEXT NULL ,
  completed TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  userIds TEXT NULL 
);

CREATE TABLE taskusersaggregategroupby (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskusersaggregateresponse (
  avg TEXT NULL ,
  count TEXT NULL ,
  groupBy TEXT NULL ,
  max TEXT NULL ,
  min TEXT NULL ,
  sum TEXT NULL 
);

CREATE TABLE taskusersavgaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE taskuserscountaggregate (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskusersmaxaggregate (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskusersminaggregate (
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE taskuserssumaggregate (
  id TEXT NULL PRIMARY KEY
);

CREATE TABLE updatemanycompaniesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanycompanynotesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanycontactnotesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanycontactsinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanydealstagesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanydealsinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanyeventcategoriesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanyeventsinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanyquotesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanyresponse (
  updatedCount TEXT NOT NULL 
);

CREATE TABLE updatemanytaskcommentsinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanytaskstagesinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanytasksinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updatemanyusersinput (
  filter TEXT NOT NULL ,
  update TEXT NOT NULL 
);

CREATE TABLE updateoneauditsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonecompanyinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonecompanynoteinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonecompanynotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonecompanysubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonecontactinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonecontactnoteinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonecontactnotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonecontactsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonedealinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonedealstageinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonedealstagesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonedealsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateoneeventcategoryinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateoneeventcategorysubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateoneeventinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateoneeventsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonequoteinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonequotesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonetaskcommentinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonetaskcommentsubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonetaskinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonetaskstageinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateonetaskstagesubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateonetasksubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE updateoneuserinput (
  id TEXT NOT NULL PRIMARY KEY,
  update TEXT NOT NULL 
);

CREATE TABLE updateoneusersubscriptionfilterinput (
  filter TEXT NOT NULL 
);

CREATE TABLE user (
  avatarUrl TEXT NULL ,
  companies TEXT NOT NULL ,
  contacts TEXT NOT NULL ,
  createdAt TEXT NOT NULL ,
  createdBy TEXT NULL ,
  deals TEXT NOT NULL ,
  email TEXT NOT NULL ,
  events TEXT NOT NULL ,
  id TEXT NOT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NOT NULL ,
  phone TEXT NULL ,
  role TEXT NOT NULL ,
  tasks TEXT NOT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NOT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE usercompaniesargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE usercontactsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE userdealsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE usereventsargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE usertasksargs (
  filter TEXT NULL ,
  paging TEXT NULL ,
  sorting TEXT NULL 
);

CREATE TABLE useraggregatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE usercompaniesconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE userconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE usercontactsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE usercreateinput (
  email TEXT NOT NULL ,
  jobTitle TEXT NOT NULL ,
  name TEXT NOT NULL ,
  phone TEXT NOT NULL ,
  role TEXT NOT NULL ,
  timezone TEXT NOT NULL 
);

CREATE TABLE userdealsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE userdeletefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE userdeleteresponse (
  avatarUrl TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE usereventsconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE userfilter (
  and TEXT NULL ,
  companies TEXT NULL ,
  contacts TEXT NULL ,
  createdAt TEXT NULL ,
  createdBy TEXT NULL ,
  deals TEXT NULL ,
  email TEXT NULL ,
  events TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  tasks TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL ,
  updatedBy TEXT NULL 
);

CREATE TABLE userfiltercompanyfilter (
  and TEXT NULL ,
  businessType TEXT NULL ,
  companySize TEXT NULL ,
  country TEXT NULL ,
  createdAt TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  industry TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  totalRevenue TEXT NULL ,
  updatedAt TEXT NULL ,
  website TEXT NULL 
);

CREATE TABLE userfiltercontactfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  score TEXT NULL ,
  stage TEXT NULL ,
  status TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE userfilterdealfilter (
  and TEXT NULL ,
  closeDateDay TEXT NULL ,
  closeDateMonth TEXT NULL ,
  closeDateYear TEXT NULL ,
  companyId TEXT NULL ,
  createdAt TEXT NULL ,
  dealOwnerId TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL ,
  value TEXT NULL 
);

CREATE TABLE userfiltereventfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  endDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  startDate TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE userfiltertaskfilter (
  and TEXT NULL ,
  completed TEXT NULL ,
  createdAt TEXT NULL ,
  description TEXT NULL ,
  dueDate TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  or TEXT NULL ,
  stageId TEXT NULL ,
  title TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE userfilteruserfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE userrolefiltercomparison (
  eq TEXT NULL ,
  in TEXT NULL ,
  neq TEXT NULL ,
  notIn TEXT NULL 
);

CREATE TABLE usersort (
  direction TEXT NOT NULL ,
  field TEXT NOT NULL ,
  nulls TEXT NULL 
);

CREATE TABLE usersubscriptionfilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE usertasksconnection (
  nodes TEXT NOT NULL ,
  pageInfo TEXT NOT NULL ,
  totalCount TEXT NOT NULL 
);

CREATE TABLE userupdatefilter (
  and TEXT NULL ,
  createdAt TEXT NULL ,
  email TEXT NULL ,
  id TEXT NULL PRIMARY KEY,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  or TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL ,
  updatedAt TEXT NULL 
);

CREATE TABLE userupdateinput (
  email TEXT NULL ,
  jobTitle TEXT NULL ,
  name TEXT NULL ,
  phone TEXT NULL ,
  role TEXT NULL ,
  timezone TEXT NULL 
);
