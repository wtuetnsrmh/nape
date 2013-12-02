package project.model.data
{
    import project.config.*;
    import project.events.*;
    import project.model.*;
    import project.model.item.*;

    public class FeedData extends DataModel
    {
        private var _feedArr:Array;
        private var _characterArr:Array;
        private var _budoukaiArr:Array;
        private var _friendArr:Array;
        private var localXML:XMLList;
        private static var feedData:FeedData;

        public function FeedData()
        {
            this._feedArr = [];
            this._characterArr = [];
            this._budoukaiArr = [];
            this._friendArr = [];
            this.localXML = LocalConfig.LOCAL_LAN.FeedData;
            if (feedData != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            return;
        }// end function

        public function setFeedData(param1:XML) : void
        {
            var _loc_2:XML = null;
            var _loc_3:Object = null;
            this._feedArr.length = 0;
            this._characterArr.length = 0;
            this._budoukaiArr.length = 0;
            this._friendArr.length = 0;
            for each (_loc_2 in param1.EventHistory)
            {
                
                _loc_3 = this.feedDataTranslator(_loc_2);
                this._feedArr.push(_loc_3);
                switch(String(_loc_3.groupId))
                {
                    case "0":
                    {
                        this._characterArr.push(_loc_3);
                        break;
                    }
                    case "1":
                    {
                        break;
                    }
                    case "2":
                    {
                        this._budoukaiArr.push(_loc_3);
                        break;
                    }
                    case "3":
                    {
                        this._friendArr.push(_loc_3);
                        break;
                    }
                    case "4":
                    {
                        break;
                    }
                    case "5":
                    {
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
            return;
        }// end function

        private function feedDataTranslator(param1:XML) : Object
        {
            var itemName6:String;
            var diff21:String;
            var opName27:String;
            var xmlData:* = param1;
            var obj:* = new Object();
            obj.multi = 2;
            var feedStr:String;
            switch(int(xmlData.@Type))
            {
                case 0:
                {
                    feedStr = feedStr + String(this.localXML.BudoukaiRound.@Text).replace("{round}", xmlData.@Value3);
                    switch(int(xmlData.@Value5))
                    {
                        case 0:
                        {
                            feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.BudoukaiWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.BudoukaiDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                            break;
                        }
                        case 2:
                        {
                            feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.BudoukaiChampion.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.BudoukaiSecondDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                            break;
                        }
                        case 4:
                        {
                            feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.BudoukaiSecond.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.BudoukaiThirdDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                            break;
                        }
                        case 8:
                        {
                            feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.BudoukaiHalf.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.BudoukaiHalfDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    break;
                }
                case 1:
                {
                    feedStr = feedStr + String(this.localXML.BudoukaiSeed.@Text).replace("{round}", xmlData.@Value3);
                    break;
                }
                case 2:
                {
                    if (int(xmlData.@Value2) > 0 || int(xmlData.@Value4) > 0)
                    {
                        feedStr = feedStr + String(this.localXML.BudoukaiPrizeSilverExp.@Text).replace("{round}", xmlData.@Value1).replace("{exp}", xmlData.@Value2).replace("{silver}", xmlData.@Value4).replace("{info}", xmlData.@Info);
                    }
                    break;
                }
                case 3:
                {
                    feedStr = feedStr + String(this.localXML.Born.@Text).replace("{job}", this.getJobName(xmlData.@Value2)).replace("{user}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content));
                    break;
                }
                case 4:
                {
                    feedStr = feedStr + String(this.localXML.LevelUp.@Text).replace("{level}", xmlData.@Value2).replace("{health}", xmlData.@Value4).replace("{attr}", xmlData.@Value3);
                    break;
                }
                case 5:
                {
                    if (int(xmlData.@Value2) == 0)
                    {
                        feedStr = feedStr + String(this.localXML.LotteryNone.@Text);
                        break;
                    }
                    switch(0)
                    {
                        case _loc_5:
                        {
                            feedStr = feedStr + String(this.localXML.LotteryGetSkill.@Text).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        case @Id:
                        {
                            feedStr = feedStr + String(this.localXML.LotteryGetWeapon.@Text).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        case _loc_5:
                        {
                            feedStr = feedStr + String(this.localXML.LotteryGetOfficer.@Text).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        case 0:
                        {
                            feedStr = feedStr + String(this.localXML.LotteryNone.@Text);
                            break;
                        }
                        case 1:
                        {
                            feedStr = feedStr + String(this.localXML.LotteryGetItem.@Text).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        default:
                        {
                            feedStr = feedStr + String(this.localXML.LotteryGetItem.@Text).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                            break;
                        }
                        for each (_loc_6 in _loc_5)
                        {
                            with (_loc_5[_loc_4])
                            {
                            }
                        }
                    }
                    break;
                }
                case 6:
                {
                    itemName6;
                    switch(int(xmlData.@Value2))
                    {
                        case 0:
                        {
                            itemName6 = LocalConfig.LOCAL_LAN.UpGradePane.Skill.@Text + this.getSkillName(xmlData.@Value3);
                            break;
                        }
                        case 1:
                        {
                            itemName6 = LocalConfig.LOCAL_LAN.UpGradePane.Weapon.@Text + this.getWeaponName(xmlData.@Value3);
                            break;
                        }
                        case 2:
                        {
                            itemName6 = LocalConfig.LOCAL_LAN.UpGradePane.Officer.@Text + this.getPetName(xmlData.@Value3);
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    switch(int(xmlData.@Value4))
                    {
                        case 0:
                        {
                            feedStr = feedStr + String(this.localXML.UpgradeItem.@Text).replace("{item}", itemName6).replace("{level}", xmlData.@Value5);
                            break;
                        }
                        case 1:
                        {
                            feedStr = feedStr + String(this.localXML.DownItem.@Text).replace("{item}", itemName6).replace("{level}", xmlData.@Value5);
                            break;
                        }
                        case 2:
                        {
                            feedStr = feedStr + String(this.localXML.DownItemSafe.@Text).replace("{item}", itemName6);
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    break;
                }
                case 7:
                {
                    switch(int(xmlData.@Value2))
                    {
                        case 0:
                        {
                            feedStr = feedStr + String(this.localXML.GetSkill.@Text).replace("{item}", this.getSkillName(xmlData.@Value3));
                            break;
                        }
                        case 1:
                        {
                            feedStr = feedStr + String(this.localXML.GetWeapon.@Text).replace("{item}", this.getWeaponName(xmlData.@Value3));
                            break;
                        }
                        case 2:
                        {
                            feedStr = feedStr + String(this.localXML.GetOfficer.@Text).replace("{item}", this.getPetName(xmlData.@Value3));
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    break;
                }
                case 8:
                {
                    if (int(xmlData.@Participator) == 0)
                    {
                        feedStr = feedStr + String(this.localXML.ItemUse.@Text).replace("{item}", this.getPropName(xmlData.@Value2));
                    }
                    else if (xmlData.@UserId == xmlData.@Participator)
                    {
                        feedStr = feedStr + String(this.localXML.UseRedBull.@Text).replace("{officer}", this.getPetName(xmlData.@Value3));
                    }
                    else
                    {
                        feedStr = feedStr + String(this.localXML.UseRedBullForFriend.@Text).replace("{officer}", this.getPetName(xmlData.@Value3)).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content));
                    }
                    break;
                }
                case 9:
                {
                    switch(0)
                    {
                        case _loc_5:
                        {
                            feedStr = feedStr + String(this.localXML.DropSkill.@Text).replace("{amount}", xmlData.@Value3).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        case @Id:
                        {
                            feedStr = feedStr + String(this.localXML.DropWeapon.@Text).replace("{amount}", xmlData.@Value3).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        case _loc_5:
                        {
                            feedStr = feedStr + String(this.localXML.DropOfficer.@Text).replace("{amount}", xmlData.@Value3).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                        }
                        default:
                        {
                            feedStr = feedStr + String(this.localXML.DropItem.@Text).replace("{amount}", xmlData.@Value3).replace("{item}", this.getPropName(xmlData.@Value2));
                            break;
                            break;
                        }
                        for each (_loc_6 in _loc_5)
                        {
                            with (_loc_5[_loc_4])
                            {
                            }
                        }
                    }
                    break;
                }
                case 10:
                {
                    feedStr = feedStr + String(this.localXML.SellWeapon.@Text).replace("{silver}", xmlData.@Value3).replace("{item}", this.getWeaponName(xmlData.@Value2));
                    break;
                }
                case 11:
                {
                    if (int(xmlData.@Value2) == 1)
                    {
                        feedStr = feedStr + String(this.localXML.ArenaWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{silver}", xmlData.@Value3).replace("{exp}", xmlData.@Value4).replace("{oexp}", xmlData.@Value5);
                    }
                    else
                    {
                        feedStr = feedStr + String(this.localXML.ArenaDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{silver}", xmlData.@Value3).replace("{exp}", xmlData.@Value4).replace("{oexp}", xmlData.@Value5);
                    }
                    if (xmlData.@Value6 != 2)
                    {
                        obj.lottery = xmlData.@EventId;
                    }
                    break;
                }
                case 12:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.ArenaChallengeWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.ArenaChallengeDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                    break;
                }
                case 13:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.FreePKWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.FreePKDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                    break;
                }
                case 14:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.FreeChallengeWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.FreeChallengeDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                    break;
                }
                case 15:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.FriendPKWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.FriendPKDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                    break;
                }
                case 16:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.FriendChallengeWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))) : (String(this.localXML.FriendChallengeDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content))));
                    break;
                }
                case 17:
                {
                    obj.multi = 98;
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.FriendTeseWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value3)).replace("{oexp}", xmlData.@Value5)) : (String(this.localXML.FriendTeseDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value3)).replace("{oexp}", xmlData.@Value5)));
                    break;
                }
                case 18:
                {
                    obj.multi = 98;
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.BeTeasedWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value4)).replace("{oexp}", xmlData.@Value5)) : (String(this.localXML.BeTeasedDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value4)).replace("{oexp}", xmlData.@Value5)));
                    break;
                }
                case 19:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.TeaseTrapWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value3)).replace("{oexp}", xmlData.@Value5)) : (String(this.localXML.TeaseTrapDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value3)).replace("{oexp}", xmlData.@Value5)));
                    break;
                }
                case 20:
                {
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.BeTeaseTrapWin.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value4)).replace("{oexp}", xmlData.@Value5)) : (String(this.localXML.BeTeaseTrapDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{officer}", this.getPetName(xmlData.@Value4)).replace("{oexp}", xmlData.@Value5)));
                    break;
                }
                case 21:
                {
                    obj.multi = 99;
                    diff21;
                    switch(int(xmlData.@Value2))
                    {
                        case 1:
                        {
                            diff21 = this.localXML.PVEEasy.@Text;
                            break;
                        }
                        case 2:
                        {
                            diff21 = this.localXML.PVENormal.@Text;
                            break;
                        }
                        case 3:
                        {
                            diff21 = this.localXML.PVEHard.@Text;
                            break;
                        }
                        case 4:
                        {
                            diff21 = this.localXML.PVEPro.@Text;
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    if (int(xmlData.@Value3) == 1)
                    {
                        feedStr = feedStr + String(this.localXML.PVEFight.@Text).replace("{city}", this.getCityNameByCityId(int(xmlData.@Participator % 1000))).replace("{diff}", diff21);
                        if (int(xmlData.@Value4) > 0)
                        {
                            feedStr = feedStr + String(this.localXML.PVEGetSilver.@Text).replace("{silver}", xmlData.@Value4);
                        }
                        if (int(xmlData.@Value5) > 0)
                        {
                            feedStr = feedStr + String(this.localXML.PVEGetExp.@Text).replace("{exp}", xmlData.@Value5);
                        }
                        if (int(xmlData.@Value6) > 0)
                        {
                            feedStr = feedStr + String(this.localXML.PVEGetItem.@Text).replace("{item}", this.getPropName(xmlData.@Value6));
                        }
                    }
                    else
                    {
                        feedStr = feedStr + String(this.localXML.PVEDefeat.@Text).replace("{city}", this.getCityNameByCityId(int(xmlData.@Participator % 1000))).replace("{diff}", diff21);
                    }
                    break;
                }
                case 22:
                {
                    feedStr = feedStr + (int(xmlData.@Value4) == 1 ? (String(this.localXML.PurchaseItemGold.@Text).replace("{amount}", xmlData.@Value5).replace("{item}", this.getPropName(int(xmlData.@Value3)))) : (String(this.localXML.PurchaseItemSilver.@Text).replace("{amount}", xmlData.@Value5).replace("{item}", this.getPropName(int(xmlData.@Value3)))));
                    break;
                }
                case 23:
                {
                    if (xmlData.@Value2 == 0)
                    {
                        if (int(xmlData.@Value4) == 1)
                        {
                            feedStr = feedStr + String(this.localXML.PresentToFriendGold.@Text).replace("{amount}", xmlData.@Value5).replace("{item}", this.getPropName(int(xmlData.@Value3))).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content));
                        }
                        else
                        {
                            feedStr = feedStr + String(this.localXML.PresentToFriendSilver.@Text).replace("{amount}", xmlData.@Value5).replace("{item}", this.getPropName(int(xmlData.@Value3))).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content));
                        }
                    }
                    else
                    {
                        feedStr = feedStr + String(this.localXML.GetFromFriend.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getPropName(xmlData.@Value3));
                    }
                    break;
                }
                case 24:
                {
                    if (int(xmlData.@Value3) > 0)
                    {
                        feedStr = feedStr + String(this.localXML.QuestPrizeSilver.@Text).replace("{amount}", xmlData.@Value3);
                    }
                    if (int(xmlData.@Value4) > 0)
                    {
                        feedStr = feedStr + String(this.localXML.QuestPrizeExp.@Text).replace("{amount}", xmlData.@Value4);
                    }
                    if (int(xmlData.@Value5) > 0)
                    {
                        feedStr = feedStr + String(this.localXML.PrizeGetItem.@Text).replace("{item}", this.getPropName(xmlData.@Value5)).replace("{amount}", xmlData.@Value6);
                    }
                    break;
                }
                case 25:
                {
                    switch(int(xmlData.@Value2))
                    {
                        case 0:
                        {
                            feedStr = feedStr + String(this.localXML.FriendShareGetSill.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getSkillName(xmlData.@Value3));
                            break;
                        }
                        case 1:
                        {
                            feedStr = feedStr + String(this.localXML.FriendShareGetWeapon.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getWeaponName(xmlData.@Value3));
                            break;
                        }
                        case 2:
                        {
                            feedStr = feedStr + String(this.localXML.FriendShareGetOfficer.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getPetName(xmlData.@Value3));
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    break;
                }
                case 26:
                {
                    switch(int(xmlData.@Value2))
                    {
                        case 0:
                        {
                            feedStr = feedStr + String(this.localXML.FriendUpgradeSkill.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getPetName(xmlData.@Value3)).replace("{level}", xmlData.@Value4);
                            break;
                        }
                        case 1:
                        {
                            feedStr = feedStr + String(this.localXML.FriendUpgradeWeapon.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getPetName(xmlData.@Value3)).replace("{level}", xmlData.@Value4);
                            break;
                        }
                        case 2:
                        {
                            feedStr = feedStr + String(this.localXML.FriendUpgradeOfficer.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getPetName(xmlData.@Value3)).replace("{level}", xmlData.@Value4);
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                }
                case 27:
                {
                    opName27 = xmlData.@Value6 == 1 ? (this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator)) : (xmlData.PaticipatorName);
                    feedStr = feedStr + (int(xmlData.@Value2) == 1 ? (String(this.localXML.FriendSharePVPWin.@Text).replace("{friend}", this.wrapPlayerNameWithHTML(xmlData.@Info, xmlData.@Value3)).replace("{op}", opName27)) : (String(this.localXML.FriendSharePVPDefeat.@Text).replace("{friend}", this.wrapPlayerNameWithHTML(xmlData.@Info, xmlData.@Value3)).replace("{op}", opName27)));
                    obj.multi = int(xmlData.@Value4);
                    break;
                }
                case 28:
                {
                    feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.WinChampionGold.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{arena}", xmlData.@Info).replace("{amount}", xmlData.@Value3)) : (String(this.localXML.WinChampionSilver.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{arena}", xmlData.@Info).replace("{amount}", xmlData.@Value3)));
                    break;
                }
                case 29:
                {
                    feedStr = feedStr + String(this.localXML.FightChampionDefeat.@Text).replace("{arena}", xmlData.@Info).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content));
                    break;
                }
                case 30:
                {
                    feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.ChampionDefendSuccessGold.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{amount}", xmlData.@Value3)) : (String(this.localXML.ChampionDefendSuccessSilver.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{amount}", xmlData.@Value3)));
                    break;
                }
                case 31:
                {
                    feedStr = feedStr + String(this.localXML.ChampoinDefendDefeat.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{arena}", xmlData.@Info);
                    break;
                }
                case 32:
                {
                    feedStr = feedStr + (xmlData.@Value2 == 1 ? (String(this.localXML.ChampoinWinHomeGold.@Text).replace("{arena}", xmlData.@Info).replace("{amount}", xmlData.@Value3)) : (String(this.localXML.ChampoinWinHomeSilver.@Text).replace("{arena}", xmlData.@Info).replace("{amount}", xmlData.@Value3)));
                    break;
                }
                case 33:
                {
                    feedStr = feedStr + String(this.localXML.RecoverHelp.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{item}", this.getPetName(xmlData.@Value3));
                    break;
                }
                case 34:
                {
                    feedStr = feedStr + String(this.localXML.StudentCharge.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{amount}", xmlData.@Value2);
                    break;
                }
                case 35:
                {
                    feedStr = feedStr + String(this.localXML.StudentGiveSilver.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{amount}", xmlData.@Value2).replace("{level}", xmlData.@Value3);
                    break;
                }
                case 36:
                {
                    feedStr = feedStr + String(this.localXML.StudentGiveGold.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{amount}", xmlData.@Value2).replace("{level}", xmlData.@Value3);
                    break;
                }
                case 36:
                {
                    feedStr = feedStr + String(this.localXML.Teacher.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content));
                    break;
                }
                case 37:
                {
                    feedStr = feedStr + String(this.localXML.TeamGetPrize.@Text).replace("{item}", this.getPropName(xmlData.@Value4)).replace("{amount}", xmlData.@Value5);
                    break;
                }
                case 38:
                {
                    feedStr = feedStr + String(this.localXML.TeamComplete.@Text).replace("{city}", this.getConvoyCityName(xmlData.@Value3, xmlData.@Value2)).replace("{amount}", xmlData.@Value5);
                    break;
                }
                case 39:
                {
                    feedStr = feedStr + String(this.localXML.TeamFightBoss.@Text).replace("{city}", this.getConvoyCityName(xmlData.@Value3, xmlData.@Value2));
                    break;
                }
                case 40:
                {
                    feedStr = feedStr + String(this.localXML.TeamExit.@Text).replace("{city}", this.getConvoyCityName(xmlData.@Value3, xmlData.@Value2)).replace("{amount}", xmlData.@Value5);
                    break;
                }
                case 41:
                {
                    feedStr = feedStr + String(this.localXML.FeedGiveSilver.@Text).replace("{amount}", xmlData.@Value2);
                    break;
                }
                case 42:
                {
                    feedStr = feedStr + String(this.localXML.Valentine.@Text).replace("{op}", this.wrapPlayerNameWithHTML(xmlData.@ParticipatorName, xmlData.@Participator, xmlData.@Content)).replace("{body}", xmlData.@Content);
                    break;
                }
                default:
                {
                    feedStr = feedStr + String(this.localXML.Known.@Text).replace("{type}", xmlData.@Type);
                    break;
                    break;
                }
            }
            obj.groupName = xmlData.@Type;
            if (xmlData.@Value1 > 1000)
            {
                obj.battleId = xmlData.@Value1;
            }
            obj.opUId = xmlData.@Participator;
            obj.opNick = xmlData.@ParticipatorName;
            obj.groupId = xmlData.@GroupId;
            obj.type = xmlData.@Type;
            obj.eventTime = xmlData.@EventDatetime;
            obj.uId = xmlData.@UserId;
            obj.info = xmlData.@Info;
            obj.feed = feedStr;
            return obj;
        }// end function

        private function getConvoyCityName(param1:int, param2:int) : String
        {
            var _loc_3:String = "";
            switch(param1)
            {
                case 1:
                {
                    _loc_3 = this.localXML.PVEEasy.@Text;
                    break;
                }
                case 2:
                {
                    _loc_3 = this.localXML.PVENormal.@Text;
                    break;
                }
                case 3:
                {
                    _loc_3 = this.localXML.PVEHard.@Text;
                    break;
                }
                case 4:
                {
                    _loc_3 = this.localXML.PVEPro.@Text;
                    break;
                }
                default:
                {
                    break;
                }
            }
            var _loc_4:String = "";
            switch(param2)
            {
                case 1:
                {
                    _loc_4 = this.localXML.SiShuiGuan.@Text;
                    break;
                }
                case 2:
                {
                    _loc_4 = this.localXML.LuoYang.@Text;
                    break;
                }
                case 3:
                {
                    _loc_4 = this.localXML.ChangAn.@Text;
                    break;
                }
                case 4:
                {
                    _loc_4 = this.localXML.JiZhou.@Text;
                    break;
                }
                case 5:
                {
                    _loc_4 = this.localXML.XiaPi.@Text;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return _loc_3 + _loc_4;
        }// end function

        private function getPetName(param1:int) : String
        {
            var _loc_2:* = ItemBuilder.createItem(ItemCategory.OFFICER, param1 % 10000);
            return "<font color=\'#FF6600\'>" + _loc_2.name + "</font>";
        }// end function

        private function getSkillName(param1:int) : String
        {
            var _loc_2:* = ItemBuilder.createItem(ItemCategory.SKILL, param1 % 10000);
            return "<font color=\'#FF6600\'>" + _loc_2.name + "</font>";
        }// end function

        private function getWeaponName(param1:int) : String
        {
            var _loc_2:* = ItemBuilder.createItem(ItemCategory.WEAPON, param1 % 10000);
            return "<font color=\'#FF6600\'>" + _loc_2.name + "</font>";
        }// end function

        private function getPropName(param1:int) : String
        {
            var _loc_2:* = ItemBuilder.createItem(ItemCategory.ITEM, param1, 0, param1);
            return "<font color=\'#FF6600\'>" + _loc_2.name + "</font>";
        }// end function

        private function getJobName(param1:int) : String
        {
            switch(param1)
            {
                case 1:
                {
                    return LocalConfig.LOCAL_LAN.Characters.Seiryu.@Text;
                }
                case 2:
                {
                    return LocalConfig.LOCAL_LAN.Characters.Byakko.@Text;
                }
                case 3:
                {
                    return LocalConfig.LOCAL_LAN.Characters.Sizaku.@Text;
                }
                case 4:
                {
                    return LocalConfig.LOCAL_LAN.Characters.Genbu.@Text;
                }
                default:
                {
                    return "老噶桑";
                    break;
                }
            }
        }// end function

        private function getCityNameByCityId(param1:int) : String
        {
            var xmlNode:XML;
            var i:int;
            var node:XML;
            var cId:* = param1;
            var str:String;
            var _loc_3:int = 0;
            var _loc_4:* = ItemConfig.PVE_CONFIG.City;
            while (_loc_4 in _loc_3)
            {
                
                xmlNode = _loc_4[_loc_3];
                if (xmlNode.@Id == cId)
                {
                    str = str + (xmlNode.@Name + LocalConfig.LOCAL_LAN.Characters.ShouJiang.@Text);
                }
            }
            i;
            var _loc_3:int = 0;
            var _loc_6:int = 0;
            var _loc_7:* = ItemConfig.PVE_CONFIG.City;
            var _loc_5:* = new XMLList("");
            for each (_loc_8 in _loc_7)
            {
                
                var _loc_9:* = _loc_7[_loc_6];
                with (_loc_7[_loc_6])
                {
                    if (@Id == cId)
                    {
                        _loc_5[_loc_6] = _loc_8;
                    }
                }
            }
            var _loc_4:* = _loc_5.Pet;
            while (_loc_4 in _loc_3)
            {
                
                node = _loc_4[_loc_3];
                if (i > 0)
                {
                    str = str + (LocalConfig.LOCAL_LAN.Characters.And.@Text + node.@Name);
                }
                else
                {
                    str = str + node.@Name;
                }
                i = (i + 1);
            }
            return str;
        }// end function

        private function wrapPlayerNameWithHTML(param1:String, param2:int, param3:String = "") : String
        {
            return LocalConfig.LOCAL_LAN.Qp[param3].@Text + "<a href=\'event:" + param2.toString() + "\'><font color=\'#0066FF\'><u>" + param1 + "</u></font></a>";
        }// end function

        public function get feedArr() : Array
        {
            return this._feedArr;
        }// end function

        public function set feedArr(param1:Array) : void
        {
            this._feedArr = param1;
            return;
        }// end function

        public function get characterArr() : Array
        {
            return this._characterArr;
        }// end function

        public function set characterArr(param1:Array) : void
        {
            this._characterArr = param1;
            return;
        }// end function

        public function get budoukaiArr() : Array
        {
            return this._budoukaiArr;
        }// end function

        public function set budoukaiArr(param1:Array) : void
        {
            this._budoukaiArr = param1;
            return;
        }// end function

        public function get friendArr() : Array
        {
            return this._friendArr;
        }// end function

        public function set friendArr(param1:Array) : void
        {
            this._friendArr = param1;
            return;
        }// end function

        public static function getInstance() : FeedData
        {
            if (feedData == null)
            {
                feedData = new FeedData;
            }
            return feedData;
        }// end function

    }
}
