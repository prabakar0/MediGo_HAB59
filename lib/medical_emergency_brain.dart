import 'package:flutter/material.dart';
import 'package:medigo_hab59/constants.dart';

class MedEmergency {
  String heading;
    String procedure;
  MedEmergency({this.heading,this.procedure});
}


List<MedEmergency> medemer=[
  MedEmergency(heading: "ANAPHYLAXIS",procedure: "1. Immediately call 108 or your local medical emergency number.\n\n2. Ask the person if he or she is carrying an epinephrine autoinjector (EpiPen, Auvi-Q, others) to treat an allergic attack.\n\n3.  If the person says he or she needs to use an autoinjector, ask whether you should help inject the medication.\n This is usually done by pressing the autoinjector against the person's thigh.\n\n4. Have the person lie still on his or her back.\n\n5.  Loosen tight clothing and cover the person with a blanket.\n Don't give the person anything to drink.\n\n6.  If there's vomiting or bleeding from the mouth, turn the person on his or her side to prevent choking.\n\n7.  If there are no signs of breathing, coughing or movement, begin CPR.\n Do uninterrupted chest presses — about 100 every minute — until paramedics arrive.\n\n8.  Get emergency treatment even if symptoms start to improve. After anaphylaxis, it's possible for symptoms to recur.\n Monitoring in a hospital for several hours is usually necessary."),
  MedEmergency(heading: "ASTHMA",procedure:"1. Follow the Person’s Asthma Plan, if Possible\n\ni.  Find out if the person has an individualized asthma action plan from a health care provider.\n\nii.  If so, follow its directions for giving asthma medication and seeking medical help for acute asthma attack.\n\n2. Give Asthma First Aid\n\nIf the person doesn't have an asthma plan:\n\ni.  Sit the person upright comfortably and loosen tight clothing.\n\nii.  If the person has asthma medication, such as an inhaler, assist in using it.\n\niii.  If the person doesn’t have an inhaler, use one from a first aid kit. Do not borrow someone else’s.\n The medicine in it may be different than the needed rescue medicine. Also, using someone else's inhaler has a slight risk of passing on an infection. \n\n3. Use Inhaler With a Spacer, if Possible\n\ni.  Remove cap and shake inhaler well.\n\nii.  Insert inhaler into spacer.\n\niii.  Have the person breathe out completely and put mouth tightly around spacer mouthpiece.\n\niv.  Press inhaler once to deliver a puff.\n\nv.  Have the person breathe in slowly through the mouth and then hold breath for 10 seconds.\n\nvi Give a total of four puffs, waiting about a minute between each puff.\n\n4. Use Inhaler Without a Spacer, if Necessary\n\ni. Remove the inhaler cap and shake well.\n\nii. Have the person breathe out all the way and seal lips tightly around inhaler mouthpiece.\n\niii.  As the person starts to breathe in slowly, press down on inhaler one time.\n\niv.  The person should keep breathing in as slowly and deeply as possible (about five to seven seconds) and then hold breath for 10 seconds.\n\nv.  Give a total of four puffs, waiting about one minute between each puff.\n\n5. Continue Using Inhaler if Breathing Is Still a Problem\n\ni.  After four puffs, wait four minutes. If the person still has trouble breathing, give another set of four puffs.\n\nii.  If there’s still little or no improvement, give 4 to 8 puffs every 20 minutes until the ambulance arrives for up to 4 hours.\n If you are still waiting for help after 4 hours, the recommended dose is 4 to 8 puffs as needed every 1 to 4 hours.\n\n6. Monitor the Person Until Help Arrives\n\ni.  Do not mistake drowsiness as a sign of improvement; it could mean asthma is worsening.\n\nii.  Do not assume the person’s asthma is improving if you no longer hear wheezing." ),
  MedEmergency(heading: "BLEEDING",procedure: "1.	If someone is bleeding heavily, the main aim is to prevent further blood loss and minimize the effects of shock (see below).\n\ni.	First, dial 108 and ask for an ambulance as soon as possible.\n\nii.	If you have disposable gloves, use them to reduce the risk of any infection being passed on.\n\niii.	Check that there's nothing embedded in the wound. If there is, take care not to press down on the object.\n\niv.	Instead, press firmly on either side of the object and build up padding around it before bandaging, to avoid putting pressure on the object itself.\n\n2.	If nothing is embedded:\n\ni.	Apply and maintain pressure to the wound with your gloved hand, using a clean pad or dressing if possible; continue to apply pressure until the bleeding stops.\n\nii.	Use a clean dressing to bandage the wound firmly\n\niii.	If bleeding continues through the pad, apply pressure to the wound  until the bleeding stops and then apply another pad over the top and bandage it in place; don't remove the original pad or dressing, but continue to check that the bleeding has stopped.\n\niv.	 If a body part, such as a finger, has been severed, place it in a plastic bag or wrap it in cling film and make sure it goes with the casualty to hospital.\n\n"),
  MedEmergency(heading: "BURNS" ,procedure: "If someone has a burn or scald:\n\ni.  Cool the burn as quickly as possible with cool running water for at least 10 minutes, or until the pain is relieved\n\nii.  Call 108 or seek medical help, if needed\n\niii.  While cooling the burn, carefully remove any clothing or jewelry, unless it's attached to the skin\n\niv.  If you're cooling a large burnt area, particularly in babies, children and elderly people, \nbe aware that it may cause hypothermia (it may be necessary to stop cooling the burn to avoid hypothermia)\n\nv.   Cover the burn loosely with cling film;\n if cling film isn't available, use a clean, dry dressing or non-fluffy material;\n don't wrap the burn tightly, because swelling may lead to further injury\n\nvi.  Don't apply creams, lotions or sprays to the burn\n\nvii.  For chemical burns, wear protective gloves, remove any affected clothing, and rinse the burn with cool running water for at least 20 minutes to wash out the chemical. If possible, determine the cause of the injury.\n\nviii.   In certain situations where a chemical is regularly handled, a specific chemical antidote may be available to use.\n\nix.  Be careful not to contaminate and injure yourself with the chemical, and wear protective clothing if necessary."),
  MedEmergency(heading: "CHOKING" ,procedure:"A.Mild:\n\n1.If the airway is only partly blocked, the person will usually be able to speak, cry, cough or breathe. In situations like this, a person will usually be able to clear the blockage themselves.\n\nIf choking is mild:\n\ni.  Encourage the person to cough to try to clear the blockage\n\nii. Ask them to try to spit out the object if it’s in their mouth\n\niii.  Don't put your fingers in their mouth to help them because they may accidentally bite you.\n\nB.  Severe:\n\n2.If choking is severe, the person won’t be able to speak, cry, cough or breathe, and without help they’ll eventually become unconscious.\n\nTo help an adult or child over one year old:\n\ni.  Stand behind the person and slightly to one side.\n Support their chest with one hand. \nLean the person forward so that the object blocking their airway will come out of their mouth, rather than moving further down.\n\nii.  Give up to five sharp blows between the person’s shoulder blades with the heel of your hand (the heel is between the palm of your hand and your wrist).\n\niii.  Check if the blockage has cleared.\n\niv.  If not, give up to five abdominal thrusts (see below).\n\n  Abdominal thrusts shouldn't be used on babies under one year old, pregnant women or obese people.\n\n3. To perform abdominal thrusts on a person who is severely choking and isn’t in one of the above groups:\n\ni.  Stand behind the person who is choking.\n\nii.  Place your arms around their waist and bend them well forward.\n\niii.  Clench one fist and place it just above the person's belly button.\n\niv.  Place your other hand on top of your fist and pull sharply inwards and upwards.\n\nv.  Repeat this up to five times.\n\nThe aim is to get the obstruction out with each chest thrust, rather than necessarily doing all five.\n\n" ),
  MedEmergency(heading: "DROWNING",procedure: "1.If someone is in difficulty in water, don't enter the water to help unless it's absolutely essential.\n\n2.  Once the person is on land, if they're not breathing, open the airway and give five initial rescue breaths before starting CPR. \nIf you're alone, perform CPR for one minute before calling for emergency help.\n\n3.  Find out how to give CPR, including rescue breaths.\n\n4.  If the person is unconscious but still breathing, put them into the recovery position with their head lower than their body and call an ambulance immediately.\n\n5. Continue to observe the casualty to ensure they don't stop breathing or that their airway becomes obstructed.\n\n"),
  MedEmergency(heading:"ELECTROCUTION" ,procedure:"If someone has had an electric shock, switch off the electrical current at the mains to break the contact between the person and the electrical supply.\n\nIf you can't reach the mains supply:\n\ni.  Don't go near or touch the person until you're sure the electrical supply has been switched off .\n\nii.  Once the power supply has been switched off, and if the person isn't breathing, dial 108 for an ambulance\n\n" ),
  MedEmergency(heading: "EYE INJURY",procedure: "1. For Chemical Exposure\n\ni.  Don't rub eyes.\n\nii.  Immediately wash out the eye with lots of water. Use whatever is closest -- water fountain, shower, garden hose.\n\niii.  Get medical help while you are doing this, or after 15 to 20 minutes of continuous flushing.\n\niv.  Don't bandage the eye.\n\n2. For a Blow to the Eye\n\ni.  Apply a cold compress, but don't put pressure on the eye.\n\nii.  Take over-the-counter acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) for pain.\n\niii.  If there is bruising, bleeding, change in vision, or it hurts when your eye moves, see a doctor right away.\n\n  3. For a Foreign Particle in Eye\n\ni.  Don't rub the eye.\n\nii.  Pull the upper lid down and blink repeatedly.\n\niii.  If particle is still there, rinse with eyewash.\n\niv.  If rinsing doesn't help, close eye, bandage it lightly, and see a doctor.\n\n"),
  MedEmergency(heading: "FRACTURES",procedure:"It can be difficult to tell if a person has a broken bone or a joint, as opposed to a simple muscular injury.\n If you're in any doubt, treat the injury as a broken bone.\n\n1.  If the person is unconscious, has difficulty breathing or is bleeding severely, these must be dealt with first, by controlling the bleeding with direct pressure and performing CPR.\n\n2.  If the person is conscious, prevent any further pain or damage by keeping the as fracture as still as possible until you get them safely to hospital.\n\nAssess the injury and decide whether the best way to get them to hospital is by ambulance or car. For example, if the pain isn’t too severe, you could transport them to hospital by car. It's always best to get someone else to drive, so that you can deal with the casualty if they deteriorate – for example, if they lose consciousness as a result of the pain or start to vomit.\n\nHowever, if:\n\ni.  They’re in a lot of pain and in need of strong painkilling medication, don't move them and call an ambulance\n\nii.  It's obvious they have a broken leg, don't move them, but keep them in the position you found them in and call an ambulance\n\niii.  You suspect they have injured or broken their back, don't move them and call an ambulance\n\niv.  Don't give the casualty anything to eat or drink, because they may need an anaesthetic (numbing medication) when they reach hospital." ),
  MedEmergency(heading: "HEAD INJURY",procedure: "1.The treatment for head injuries depends on the injury severity. Most often, mild injuries do not require treatment.\n However, you should know the signs and symptoms that require medical attention.\n\n2.  If the head injury is severe, call the ambulance immediately.\n\n3.  If the injured person is bleeding, try to stop the bleeding by using gauze, or a clean cloth.\n\n4.  If the wound is open, do not touch or apply pressure on it. Cover or wrap the wound with a clean piece of gauze (bandage) instead.\n\n 5.  If the person is vomiting while sitting, help them to lean forward. If the person is vomiting while lying down, roll their body to the side to prevent choking.\n\n6.  If the person is awake, instruct them not to move their head and neck. This can help prevent further damage to their spine and brain.\n\n7.  If the person is unconscious and breathing, try to stabilize their body. This includes keeping their neck and head in line with their spine.\n\n8.  If the person is unconscious and not breathing, begin the process of CPR (cardiopulmonary resuscitation)."),
  MedEmergency(heading:"HEART ATTACK" ,procedure: "1.A heart attack is one of the most common life-threatening heart conditions.\n\n2.  If you think a person is having, or has had, a heart attack, sit them down and make them as comfortable as possible,\n and call 108 for an ambulance.\n\nSymptoms of a heart attack include:\n\ni.  Chest pain – the pain is usually located in the centre or left side of the chest and can feel like a sensation of pressure, tightness or squeezing\n\nii.  Pain in other parts of the body – it can feel as if the pain is travelling from the chest down one or both arms, or into the jaw, neck, back or abdomen (tummy)\n\niii.  Sit the person down and make them comfortable.\n\niv.  If they're conscious, reassure them and ask them to take a 300mg aspirin tablet to chew slowly (unless you know they shouldn't take aspirin – for example, if they're under 16 or allergic to it).\n\nv.  If the person has any medication for angina, such as a spray or tablets, help them to take it. Monitor their vital signs, such as breathing, until help arrives.\n\nvi.  If the person deteriorates and becomes unconscious, open their airway, check their breathing and, if necessary, start CPR. \nRe-alert the emergency services that the casualty is now in cardiac arrest.\n\n"),
  MedEmergency(heading: "POISONING",procedure:"1.Poisoning is potentially life-threatening.\n Most cases of poisoning happen when a person has swallowed a toxic substance, such as bleach, taken an overdose of a prescription medication, or eaten wild plants and fungi.\n Alcohol poisoning can cause similar symptoms.\n\n2. If you think someone has swallowed a poisonous substance, call 108 to get immediate medical help and advice.\n\n3. The effects of poisoning depend on the substance swallowed, but can include vomiting, loss of consciousness, pain or a burning sensation. The following advice is important:\n\ni.  Find out what's been swallowed, so you can tell the paramedic or doctor.\n\nii.  Do not give the person anything to eat or drink unless a healthcare professional advises you to.\n\niii.  Do not try to cause vomiting.\n\niv.  Stay with the person, because their condition may get worse and they could become unconscious.\n\nv.  If the person becomes unconscious while you're waiting for help to arrive, check for breathing and, if necessary, perform CPR.\n\nvi.  Don't perform mouth-to-mouth resuscitation if the casualty's mouth or airway is contaminated with the poison.\n\nvii.  Don't leave them if they're unconscious because they may roll onto their back, which could cause them to vomit.\n The vomit could then enter their lungs and make them choke.\n\nviii.  If the casualty is conscious and breathing normally, put them into the recovery position and continue to monitor their conscious state and breathing." ),
  MedEmergency(heading: "SEIZURE",procedure:"When most people think of a seizure, they think of a generalized tonic-clinic seizure, also called a grand mal seizure. \n this type of seizure, the person may cry out, fall, shake or jerk, and become unaware of what’s going on around them.\n\nHere are things you can do to help someone who is having this type of seizure:\n\n1.  Ease the person to the floor.\n\n2.  Turn the person gently onto one side. This will help the person breathe.\n\n3.  Clear the area around the person of anything hard or sharp. This can prevent injury.\n\n4.  Put something soft and flat, like a folded jacket, under his or her head.\n\n5.  Remove eyeglasses.\n\n6.  Loosen ties or anything around the neck that may make it hard to breathe.\n\n7.  Time the seizure. Call 108 if the seizure lasts longer than 5 minutes.\n\n" ),
  MedEmergency(heading:"SNAKE BITE", procedure:"1. Note the Snake'\s Appearance\nBe ready to describe the snake to emergency staff.\n\n2. Protect the Person\nWhile waiting for medical help:\n\n i.Move the person beyond striking distance of the snake.\n\n ii.Have the person lie down with wound below the heart.\n\n iii.Keep the person calm and at rest, remaining as still as possible to keep venom from spreading.\n\n vi.Cover the wound with loose, sterile bandage.\n\n v.Remove any jewelry from the area that was bitten.\n\n vi.Remove shoes if the leg or foot was bitten.\n\nDo not:\n\n ->Cut a bite wound\n\n->Attempt to suck out venom\n\n ->Apply tourniquet, ice, or water\n\n ->Give the person alcohol or caffeinated drinks or any other medications\n\n3. Follow Up\n\nIf you treat the bite at home:\n\nContact a healthcare provider. The person may need a tetanus shot. Tetanus boosters should be given every 10 years."),
  MedEmergency(heading:"SUN STROKE" ,procedure:"1.Move the person into a cool place, out of direct sunlight.\n\n2.  Remove the person's unnecessary clothing, and place the person on his or her side to expose as much skin surface to the air as possible.\n\n3.  Cool the person's entire body by sponging or spraying cold water, and fan the person to help lower the person's body temperature.\n Watch for signs of rapidly progressing heatstroke, such as seizure, unconsciousness for longer than a few seconds, and moderate to severe difficulty breathing.\n\n4.  Apply ice packs in each armpit and on the back of the person's neck.\n\n5.  If a child has stopped breathing, begin rescue breathing.\n\n6.  Do not give aspirin or acetaminophen to reduce a high body temperature that can occur with heatstroke.\n These medicines may cause problems because of the body's response to heatstroke.\n\n7.  If the person is awake and alert enough to swallow, give the person fluids for hydration.\n You may have to help. Make sure the person is sitting up enough so that he or she does not choke.\n Most people with heatstroke have an altered level of consciousness and cannot safely be given fluids to drink.\n\n" ),

];



//class Procedure extends StatefulWidget {
//
//  @override
//  final int choice;
//  Procedure({this.choice});
//
//  _ProcedureState createState() => _ProcedureState();
//}
////Procedure pro;
//
//class _ProcedureState extends State<Procedure> {
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Color(0xFFF2F2F2),
//      appBar: AppBar(
//        title: Text(medemer[this.choice].heading),
//        //centerTitle: true,
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                  colors: <Color>[
//                    Color(0xFF5B90F0),colour1,
//                  ])
//          ),
//        ),
//      ),
//      body:SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(17.0),
//          child: Container(
//            child: Text(
//              medemer[pro.choice].procedure,
//              style: TextStyle(
//                fontSize: 20,
//              ),
//            ),),
//        ),
//      ),
//
//    );
//  }
//}

class Procedure extends StatelessWidget {
  final int choice;
  Procedure({this.choice});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text(medemer[choice].heading),
        //centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF5B90F0),colour1,
                  ])
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            child: Text(
              medemer[choice].procedure,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'nunito',
                //fontWeight: FontWeight.w500
              ),
            ),),
        ),
      ),

    );
  }
}
