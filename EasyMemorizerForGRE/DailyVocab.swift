//
//  DailyVocab.swift
//  EasyMemorizerForGRE
//
//  Created by Lee Janghyup on 4/6/16.
//  Copyright © 2016 Lee Janghyup. All rights reserved.
//

import UIKit

class DailyVocab: UITableViewController {
   var vocab_day1p1 = ["abandon","abase", "abash","abate", "abbreviate", "abdicate", "aberrant", "abet", "abeyance", "abject", "abjure", "abrade", "abreast_of", "abridge", "abrogate", "absolve", "abstain", "abstemious", "abstract" ,"abstruse", "abysmal", "accede", "accelerate", "accessible", "acclaim", "acclimate", "accolade", "accord", "accountable","accrete"]
   
    var meaning_day1p1 = ["자유분방,버리다","강등시키다","당황하게 하다", "(세기,수량)줄이다","(단어,문장) 줄이다" ,"(권리,왕권) 포기하다", "정도를 벗어난", "(나쁜짓)부추기다", "(일시적)중단", "비굴한,비참한", "(신념)버리다", "마모시키다", "뒤떨어지지 않는", "요약하다,감소하다", "폐지하다", "(책임,의무)면제하다", "삼가다,기권하다","(음주)절제하는", "추상적인,요약", "난해한", "심연의,끔찍한", "동의하다", "가속화하다", "접근성있는,이해하기 쉬운", "칭송하다","적응하다","영예", "주다,조화", "책임있는,설명될수 있는","점진적으로 증가하다"]
    
    
    
    var vocab_day1p2 = ["accrue", "acerbic","acknowledge", "acme", "acolyte", "acoustics", "acquiesce", "acquit", "acrid","acrimonious", "acumen", "acute", "adage", "adamant", "adapt", "adduce", "adept", "adequate", "adherent", "admonish", "adolescent", "adorn", "adrift", "adroit", "adulation", "adulterate", "adumbrate", "advent", "adversary", "adversity" ]
    var meaning_day1p2 = ["(이자,혜택 등)쌓이다", "신,신랄한", "인정하다,감사하다", "최정상", "복사,시종","음향시설","(마지못해)순응하다","무죄를 선고하다", "콕 쏘는듯한, 신랄한", "험악한", "명민함", "심각한,예민한,급성인", "속담", "단호한", "적응시키다,조정하다", "증거로 인용하다", "능숙한", "충분한", "지지자","권고","사춘기의,미성숙한", "장식하다", "떠내려가는, 방황하는", "능숙한", "과찬", "순도를 떨어트리다", "대략적으로", "출현", "적","고난" ]
    
    
    var vocab_day1p3 = ["advocate","aesthetic","affable", "affect", "affiliate", "affinity", "affirm", "afflict", "affluent", "affront", "aggrandize", "aggravate", "aggregate", "aggrieved" , "agile", "agitate", "agog", "agony" , "ailing", "alacrity", "albeit", "alienate", "align" , "allay", "alleviate" , "allocate" , "alloy" , "allude", "aloof" , "altruistic","amalgamate"]
    var meaning_day1p3 = ["지지하다, 옹호자", "심미적인", "붙임성이 있는", "영향을 미치다, 가장하다", "제휴하다, 교제하다", "좋아함,유사성", "단언", "괴롭히다", "부유한", "모욕,모욕하다", "증대시키다, 강화", "악화시키다,화", "모으다, 합계", "분개한", "민첩한", "어지럽히다, 선동하다", "몹시 흥분한", "큰 고통", "아픈", "민첩", "~에도 불구하고", "멀어지게 하다, 양도하다", "연합하다, 정렬하다", "(두려움,염려)가라앉히다, (고통)완화시키다", "경감하다","할당하다", "합금하다, 합금" , "암시하다", "냉담한", "이타적인", "합병하다"]
    
    var vocab_day2p1 = ["amass", "ambiguous", "ambivalent", "amble", "ameliorate", "amenable", "amend", "amenity", "amiable", "amity", "amorphous", "anachronistic", "analgesic", "analogous", "anathema", "ancillary", "animadversion", "animated", "animosity", "annotate", "annul" , "anomalous", "anonymous", "antecede", "antedate", "anthropomorphism", "antidote","antipathy", "antiquated", "antithesis", "antithetical"]
    
    var meaning_day2p1 = ["모으다", "애매한", "양면적인" , "천천히", "개선하다", "순종적인", "개정하다", "편의시설,예의", "친근한", "우호", "불명확한", "시대착오적인", "진통제", "유사한", "파문, 혐오스러운것", "부속의", "호된비난", "활력있는", "적대감", "주석을 달다", "무효로하다", "변칙적인", "무명의", "선행하다", "앞서다", "의인화", "해독제, 해결책", "반감", "오래된,고풍스런", "대조", "정반대의"]
    
    
    var vocab_day2p2 = ["apathetic", "apathy", "apex", "aphorism", "apocalyptic", "apocryphal", "apologist", "apostate", "appall", "apparition", "appease", "apposite", "appraise", "appreciable","appreciate", "apprehend", "apprehensive", "apprise", "approbation", "appropriate", "approve", "apropos", "arable" , "arbiter", "arbitrary", "arbitrate", "arcane", "archaic" ]
    
    
    var meaning_day2p2 = ["무정한", "무관심", "최고점", "격언", "종말론적인", "가짜의", "변론자", "변절자", "오싹하게", "유령", "달래다", "아주적절한", "감정하다", "상당한", "감사하다, 이해하다", "체포하다, 이해하다", "걱정되는", "알려주다", "공식정인 승인", "도용하다, 책정하다", "찬성하다, 승인하다", "적절한 시기", "경작할 수 있는", "중재자, 권위자", "임의적인", "중재하다", "신비한", "고대의" ]
    
    
    var vocab_day2p3 = [ "archetype", "ardent", "ardor"," arduous", "arid", "arrest", "arrogant", "articulate", "artless", "ascendancy", "ascertain", "ascetic", "asperity", "aspersion", "aspiration", "assail", "assent", "assert", "assess", "assiduos", "assimilate", " assorted","assuage", "assume", "astringent", "astute", "asylum", "atone", "atrocious", "atrophy"]
    
    
    var meaning_day2p3 = ["원형,전형", "열렬한", "열정", "힘든", "매우건조한, 재미없는", "1.막다 2.이목을끌다", "오만한","조리있는", "1.솔직한 2.솜씨없는", "영향력", "확인하다", "금욕적인", "신랄함", "비방", "열망", "맹렬히 공격하다", "찬성하다", "주장하다", "평가하다", "근명성실한", "1.이해하다 2.동화되다", "다양한", "달래다", "1.가정하다, 2.(임무)맡다", "(맛)떫은", "명민한", "피난처,망명", "속죄하다", "극악무도한", "퇴화하다,감소하다" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//        
//        if  indexPath.section == 0  && indexPath.row == 0 {
//            
//            
//            
//            
//        }
//        
//    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "day1p1") {

        let destViewController : ViewController = segue.destinationViewController as! ViewController
            destViewController.vocabData = vocab_day1p1
            destViewController.meaningData = meaning_day1p1
        
        }
        
        if (segue.identifier == "day1p2") {
            
            let destViewController : ViewController = segue.destinationViewController as! ViewController
            destViewController.vocabData = vocab_day1p2
            destViewController.meaningData = meaning_day1p2
            
        }
        if (segue.identifier == "day1p3") {
            
            let destViewController : ViewController = segue.destinationViewController as! ViewController
            destViewController.vocabData = vocab_day1p3
            destViewController.meaningData = meaning_day1p3
            
        }
        if (segue.identifier == "day2p1") {
            
            let destViewController : ViewController = segue.destinationViewController as! ViewController
            destViewController.vocabData = vocab_day2p1
            destViewController.meaningData = meaning_day2p1
            
        }
        
        if (segue.identifier == "day2p2") {
            
            let destViewController : ViewController = segue.destinationViewController as! ViewController
            destViewController.vocabData = vocab_day2p2
            destViewController.meaningData = meaning_day2p2
            print(vocab_day2p2.count)
            print(meaning_day2p2.count)
            
        }

        if (segue.identifier == "day2p3") {
            
            let destViewController : ViewController = segue.destinationViewController as! ViewController
            destViewController.vocabData = vocab_day2p3
            destViewController.meaningData = meaning_day2p3
            
        }




    }
    

}
