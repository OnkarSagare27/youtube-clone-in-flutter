import 'package:flutter/material.dart';
import 'package:youtube_clone/data_darts/yt_data.dart';
import 'package:youtube_clone/widgets/subscribed_channel.dart';
import 'package:youtube_clone/widgets/video_card.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  @override
  Widget build(BuildContext context) {
    YTData ytData = YTData();
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 0,
                backgroundColor: Color(0xFF0F0F0F),
                title: SizedBox(
                  width: 100,
                  child: Image.asset('assets/yt_symbol_text_logo.png'),
                ),
                actions: [
                  IconButton(
                    onPressed: () => print('Pressed Cast'),
                    icon: Icon(Icons.cast_sharp),
                  ),
                  IconButton(
                    onPressed: () => print('Pressed Notifications'),
                    icon: Icon(Icons.notifications_outlined),
                  ),
                  IconButton(
                    onPressed: () => print('Pressed Search'),
                    icon: Icon(Icons.search_rounded),
                  ),
                ],
                floating: true,
                pinned: false,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(150),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ytData.subscribedChannels.length,
                          itemBuilder: (context, index) {
                            return SubscribedChannel(
                              name: ytData.subscribedChannels.values
                                  .elementAt(index)['channelName']
                                  .toString(),
                              pfp: ytData.subscribedChannels.values
                                  .elementAt(index)['pfp']
                                  .toString(),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 35,
                                  margin: EdgeInsets.only(right: 10, left: 15),
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 5),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Center(
                                    child: Text(
                                      'All',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Container(
                                height: 35,
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10, right: 10, bottom: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF272727),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Center(
                                  child: Text(
                                    'Computer Programming',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10, right: 10, bottom: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF272727),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Center(
                                  child: Text(
                                    'Music',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10, right: 10, bottom: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF272727),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Center(
                                  child: Text(
                                    'Live',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10, right: 10, bottom: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF272727),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Center(
                                  child: Text(
                                    'Coding',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  const VideoCard(
                    videoDuration: '10:38',
                    thumbnailUrl:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172217916750565456/hqdefault.png?ex=655f8402&is=654d0f02&hm=ba987fe642e88dc3230b59a1bd535d346a528dc1040f82e366add7611613399f&',
                    channelPfp:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172219710545350666/nhDLqeIgXMJBDIrX2bXavvHoWX0tsslDEh7k2xZ1P0W8b_CMRVigp2kxJubYEVwBcBlogZDes176-c-k-c0x00ffffff-no-rj.png?ex=655f85ad&is=654d10ad&hm=1e6113ed842beb690612cbffd3c300f48396c043a0b0bef24fbcd64d246211fd&',
                    channelNameAndStuff:
                        'Apna College • 1.3M views • 1 year ago',
                    videoTitle:
                        'All about Game development | What to study, jobs, packages? Simply Explained',
                  ),
                  const VideoCard(
                    videoDuration: '10:38',
                    thumbnailUrl:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172217916750565456/hqdefault.png?ex=655f8402&is=654d0f02&hm=ba987fe642e88dc3230b59a1bd535d346a528dc1040f82e366add7611613399f&',
                    channelPfp:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172219710545350666/nhDLqeIgXMJBDIrX2bXavvHoWX0tsslDEh7k2xZ1P0W8b_CMRVigp2kxJubYEVwBcBlogZDes176-c-k-c0x00ffffff-no-rj.png?ex=655f85ad&is=654d10ad&hm=1e6113ed842beb690612cbffd3c300f48396c043a0b0bef24fbcd64d246211fd&',
                    channelNameAndStuff:
                        'Apna College • 1.3M views • 1 year ago',
                    videoTitle:
                        'All about Game development | What to study, jobs, packages? Simply Explained',
                  ),
                  const VideoCard(
                    videoDuration: '10:38',
                    thumbnailUrl:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172217916750565456/hqdefault.png?ex=655f8402&is=654d0f02&hm=ba987fe642e88dc3230b59a1bd535d346a528dc1040f82e366add7611613399f&',
                    channelPfp:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172219710545350666/nhDLqeIgXMJBDIrX2bXavvHoWX0tsslDEh7k2xZ1P0W8b_CMRVigp2kxJubYEVwBcBlogZDes176-c-k-c0x00ffffff-no-rj.png?ex=655f85ad&is=654d10ad&hm=1e6113ed842beb690612cbffd3c300f48396c043a0b0bef24fbcd64d246211fd&',
                    channelNameAndStuff:
                        'Apna College • 1.3M views • 1 year ago',
                    videoTitle:
                        'All about Game development | What to study, jobs, packages? Simply Explained',
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
