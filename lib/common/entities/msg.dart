import 'package:cloud_firestore/cloud_firestore.dart';

class Msg {
  final String? fromuid;
  final String? touid;
  final String? fromname;
  final String? toname;
  final String? fromavatar;
  final String? toavatar;
  final int? fromonline;
  final int? toonline;
  final String? lastmsg;
  final Timestamp? lasttime;
  final int? msgnum;

  Msg({
    this.fromuid,
    this.touid,
    this.fromname,
    this.toname,
    this.fromavatar,
    this.fromonline,
    this.toonline,
    this.toavatar,
    this.lastmsg,
    this.lasttime,
    this.msgnum,
  });

  factory Msg.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Msg(
      fromuid: data?['from_uid'],
      touid: data?['to_uid'],
      fromname: data?['from_name'],
      toname: data?['to_name'],
      fromavatar: data?['from_avatar'],
      toavatar: data?['to_avatar'],
      fromonline: data?['from_online'],
      toonline: data?['to_online'],
      lastmsg: data?['last_msg'],
      lasttime: data?['last_time'],
      msgnum: data?['msg_num'],
    );
  }

  Map<String, dynamic> toFirestore() {
    // this method converts object to Json
    return {
      if (fromuid != null) "from_uid": fromuid,
      if (touid != null) "to_uid": touid,
      if (fromname != null) "from_name": fromname,
      if (toname != null) "to_name": toname,
      if (fromavatar != null) "from_avatar": fromavatar,
      if (toavatar != null) "to_avatar": toavatar,
      if (fromonline != null) "from_online": fromonline,
      if (toonline != null) "to_online": toonline,
      if (lastmsg != null) "last_msg": lastmsg,
      if (lasttime != null) "last_time": lasttime,
      if (msgnum != null) "msg_num": msgnum,
    };
  }
}
