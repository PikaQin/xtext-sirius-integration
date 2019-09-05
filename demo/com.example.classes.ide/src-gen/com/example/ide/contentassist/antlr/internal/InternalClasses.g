/*
 * generated by Xtext 2.17.0
 */
grammar InternalClasses;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package com.example.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package com.example.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import com.example.services.ClassesGrammarAccess;

}
@parser::members {
	private ClassesGrammarAccess grammarAccess;

	public void setGrammarAccess(ClassesGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleClassModel
entryRuleClassModel
:
{ before(grammarAccess.getClassModelRule()); }
	 ruleClassModel
{ after(grammarAccess.getClassModelRule()); } 
	 EOF 
;

// Rule ClassModel
ruleClassModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassModelAccess().getContentAssignment()); }
		(rule__ClassModel__ContentAssignment)*
		{ after(grammarAccess.getClassModelAccess().getContentAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleContent
entryRuleContent
:
{ before(grammarAccess.getContentRule()); }
	 ruleContent
{ after(grammarAccess.getContentRule()); } 
	 EOF 
;

// Rule Content
ruleContent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getContentAccess().getAlternatives()); }
		(rule__Content__Alternatives)
		{ after(grammarAccess.getContentAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConstant
entryRuleConstant
:
{ before(grammarAccess.getConstantRule()); }
	 ruleConstant
{ after(grammarAccess.getConstantRule()); } 
	 EOF 
;

// Rule Constant
ruleConstant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConstantAccess().getGroup()); }
		(rule__Constant__Group__0)
		{ after(grammarAccess.getConstantAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAssociation
entryRuleAssociation
:
{ before(grammarAccess.getAssociationRule()); }
	 ruleAssociation
{ after(grammarAccess.getAssociationRule()); } 
	 EOF 
;

// Rule Association
ruleAssociation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAssociationAccess().getGroup()); }
		(rule__Association__Group__0)
		{ after(grammarAccess.getAssociationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClass
entryRuleClass
:
{ before(grammarAccess.getClassRule()); }
	 ruleClass
{ after(grammarAccess.getClassRule()); } 
	 EOF 
;

// Rule Class
ruleClass 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassAccess().getGroup()); }
		(rule__Class__Group__0)
		{ after(grammarAccess.getClassAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute
entryRuleAttribute
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeAccess().getGroup()); }
		(rule__Attribute__Group__0)
		{ after(grammarAccess.getAttributeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleType
entryRuleType
:
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeAccess().getAlternatives()); }
		(rule__Type__Alternatives)
		{ after(grammarAccess.getTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBuiltInType
entryRuleBuiltInType
:
{ before(grammarAccess.getBuiltInTypeRule()); }
	 ruleBuiltInType
{ after(grammarAccess.getBuiltInTypeRule()); } 
	 EOF 
;

// Rule BuiltInType
ruleBuiltInType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBuiltInTypeAccess().getAlternatives()); }
		(rule__BuiltInType__Alternatives)
		{ after(grammarAccess.getBuiltInTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStringType
entryRuleStringType
:
{ before(grammarAccess.getStringTypeRule()); }
	 ruleStringType
{ after(grammarAccess.getStringTypeRule()); } 
	 EOF 
;

// Rule StringType
ruleStringType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStringTypeAccess().getGroup()); }
		(rule__StringType__Group__0)
		{ after(grammarAccess.getStringTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIntegerType
entryRuleIntegerType
:
{ before(grammarAccess.getIntegerTypeRule()); }
	 ruleIntegerType
{ after(grammarAccess.getIntegerTypeRule()); } 
	 EOF 
;

// Rule IntegerType
ruleIntegerType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIntegerTypeAccess().getGroup()); }
		(rule__IntegerType__Group__0)
		{ after(grammarAccess.getIntegerTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClassRef
entryRuleClassRef
:
{ before(grammarAccess.getClassRefRule()); }
	 ruleClassRef
{ after(grammarAccess.getClassRefRule()); } 
	 EOF 
;

// Rule ClassRef
ruleClassRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassRefAccess().getTargetAssignment()); }
		(rule__ClassRef__TargetAssignment)
		{ after(grammarAccess.getClassRefAccess().getTargetAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleValue
entryRuleValue
:
{ before(grammarAccess.getValueRule()); }
	 ruleValue
{ after(grammarAccess.getValueRule()); } 
	 EOF 
;

// Rule Value
ruleValue 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getValueAccess().getAlternatives()); }
		(rule__Value__Alternatives)
		{ after(grammarAccess.getValueAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIntegerLiteral
entryRuleIntegerLiteral
:
{ before(grammarAccess.getIntegerLiteralRule()); }
	 ruleIntegerLiteral
{ after(grammarAccess.getIntegerLiteralRule()); } 
	 EOF 
;

// Rule IntegerLiteral
ruleIntegerLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIntegerLiteralAccess().getValueAssignment()); }
		(rule__IntegerLiteral__ValueAssignment)
		{ after(grammarAccess.getIntegerLiteralAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConstantRef
entryRuleConstantRef
:
{ before(grammarAccess.getConstantRefRule()); }
	 ruleConstantRef
{ after(grammarAccess.getConstantRefRule()); } 
	 EOF 
;

// Rule ConstantRef
ruleConstantRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConstantRefAccess().getTargetAssignment()); }
		(rule__ConstantRef__TargetAssignment)
		{ after(grammarAccess.getConstantRefAccess().getTargetAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Description
ruleDescription 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDescriptionAccess().getDescriptionAssignment()); }
		(rule__Description__DescriptionAssignment)
		{ after(grammarAccess.getDescriptionAccess().getDescriptionAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule Visibility
ruleVisibility
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVisibilityAccess().getAlternatives()); }
		(rule__Visibility__Alternatives)
		{ after(grammarAccess.getVisibilityAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Content__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getContentAccess().getConstantParserRuleCall_0()); }
		ruleConstant
		{ after(grammarAccess.getContentAccess().getConstantParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getContentAccess().getClassParserRuleCall_1()); }
		ruleClass
		{ after(grammarAccess.getContentAccess().getClassParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getContentAccess().getAssociationParserRuleCall_2()); }
		ruleAssociation
		{ after(grammarAccess.getContentAccess().getAssociationParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getBuiltInTypeParserRuleCall_0()); }
		ruleBuiltInType
		{ after(grammarAccess.getTypeAccess().getBuiltInTypeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getTypeAccess().getClassRefParserRuleCall_1()); }
		ruleClassRef
		{ after(grammarAccess.getTypeAccess().getClassRefParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInType__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInTypeAccess().getStringTypeParserRuleCall_0()); }
		ruleStringType
		{ after(grammarAccess.getBuiltInTypeAccess().getStringTypeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getBuiltInTypeAccess().getIntegerTypeParserRuleCall_1()); }
		ruleIntegerType
		{ after(grammarAccess.getBuiltInTypeAccess().getIntegerTypeParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Value__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getValueAccess().getIntegerLiteralParserRuleCall_0()); }
		ruleIntegerLiteral
		{ after(grammarAccess.getValueAccess().getIntegerLiteralParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getValueAccess().getConstantRefParserRuleCall_1()); }
		ruleConstantRef
		{ after(grammarAccess.getValueAccess().getConstantRefParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Visibility__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVisibilityAccess().getPublicEnumLiteralDeclaration_0()); }
		('+')
		{ after(grammarAccess.getVisibilityAccess().getPublicEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPublicEnumLiteralDeclaration_1()); }
		('public')
		{ after(grammarAccess.getVisibilityAccess().getPublicEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getProtectedEnumLiteralDeclaration_2()); }
		('#')
		{ after(grammarAccess.getVisibilityAccess().getProtectedEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getProtectedEnumLiteralDeclaration_3()); }
		('protected')
		{ after(grammarAccess.getVisibilityAccess().getProtectedEnumLiteralDeclaration_3()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPrivateEnumLiteralDeclaration_4()); }
		('-')
		{ after(grammarAccess.getVisibilityAccess().getPrivateEnumLiteralDeclaration_4()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPrivateEnumLiteralDeclaration_5()); }
		('private')
		{ after(grammarAccess.getVisibilityAccess().getPrivateEnumLiteralDeclaration_5()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Constant__Group__0__Impl
	rule__Constant__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstantAccess().getDescriptionParserRuleCall_0()); }
	(ruleDescription)?
	{ after(grammarAccess.getConstantAccess().getDescriptionParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Constant__Group__1__Impl
	rule__Constant__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstantAccess().getConstantKeyword_1()); }
	'constant'
	{ after(grammarAccess.getConstantAccess().getConstantKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Constant__Group__2__Impl
	rule__Constant__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstantAccess().getNameAssignment_2()); }
	(rule__Constant__NameAssignment_2)
	{ after(grammarAccess.getConstantAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Constant__Group__3__Impl
	rule__Constant__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstantAccess().getEqualsSignKeyword_3()); }
	'='
	{ after(grammarAccess.getConstantAccess().getEqualsSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Constant__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstantAccess().getInitialAssignment_4()); }
	(rule__Constant__InitialAssignment_4)
	{ after(grammarAccess.getConstantAccess().getInitialAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Association__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__0__Impl
	rule__Association__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getDescriptionParserRuleCall_0()); }
	(ruleDescription)?
	{ after(grammarAccess.getAssociationAccess().getDescriptionParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__1__Impl
	rule__Association__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getAssociationKeyword_1()); }
	'association'
	{ after(grammarAccess.getAssociationAccess().getAssociationKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__2__Impl
	rule__Association__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getNameAssignment_2()); }
	(rule__Association__NameAssignment_2)
	{ after(grammarAccess.getAssociationAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__3__Impl
	rule__Association__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getSourceAssignment_3()); }
	(rule__Association__SourceAssignment_3)
	{ after(grammarAccess.getAssociationAccess().getSourceAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__4__Impl
	rule__Association__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getHyphenMinusHyphenMinusGreaterThanSignKeyword_4()); }
	'-->'
	{ after(grammarAccess.getAssociationAccess().getHyphenMinusHyphenMinusGreaterThanSignKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__5__Impl
	rule__Association__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getTargetAssignment_5()); }
	(rule__Association__TargetAssignment_5)
	{ after(grammarAccess.getAssociationAccess().getTargetAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__6__Impl
	rule__Association__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getLeftSquareBracketKeyword_6()); }
	'['
	{ after(grammarAccess.getAssociationAccess().getLeftSquareBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__7__Impl
	rule__Association__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getLowerBoundAssignment_7()); }
	(rule__Association__LowerBoundAssignment_7)
	{ after(grammarAccess.getAssociationAccess().getLowerBoundAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__8__Impl
	rule__Association__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getFullStopFullStopKeyword_8()); }
	'..'
	{ after(grammarAccess.getAssociationAccess().getFullStopFullStopKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__9__Impl
	rule__Association__Group__10
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getUpperBoundAssignment_9()); }
	(rule__Association__UpperBoundAssignment_9)
	{ after(grammarAccess.getAssociationAccess().getUpperBoundAssignment_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__10
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Association__Group__10__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__Group__10__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAssociationAccess().getRightSquareBracketKeyword_10()); }
	']'
	{ after(grammarAccess.getAssociationAccess().getRightSquareBracketKeyword_10()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__0__Impl
	rule__Class__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getDescriptionParserRuleCall_0()); }
	(ruleDescription)?
	{ after(grammarAccess.getClassAccess().getDescriptionParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__1__Impl
	rule__Class__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getClassAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__2__Impl
	rule__Class__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getNameAssignment_2()); }
	(rule__Class__NameAssignment_2)
	{ after(grammarAccess.getClassAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__3__Impl
	rule__Class__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getClassAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__4__Impl
	rule__Class__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getSubClassesAssignment_4()); }
	(rule__Class__SubClassesAssignment_4)*
	{ after(grammarAccess.getClassAccess().getSubClassesAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__5__Impl
	rule__Class__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getAttributesAssignment_5()); }
	(rule__Class__AttributesAssignment_5)*
	{ after(grammarAccess.getClassAccess().getAttributesAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getRightCurlyBracketKeyword_6()); }
	'}'
	{ after(grammarAccess.getClassAccess().getRightCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__0__Impl
	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getDescriptionParserRuleCall_0()); }
	(ruleDescription)?
	{ after(grammarAccess.getAttributeAccess().getDescriptionParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__1__Impl
	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getVisibilityAssignment_1()); }
	(rule__Attribute__VisibilityAssignment_1)
	{ after(grammarAccess.getAttributeAccess().getVisibilityAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__2__Impl
	rule__Attribute__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
	(rule__Attribute__NameAssignment_2)
	{ after(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__3__Impl
	rule__Attribute__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getColonKeyword_3()); }
	':'
	{ after(grammarAccess.getAttributeAccess().getColonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__4__Impl
	rule__Attribute__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getTypeAssignment_4()); }
	(rule__Attribute__TypeAssignment_4)
	{ after(grammarAccess.getAttributeAccess().getTypeAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__5__Impl
	rule__Attribute__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getLeftSquareBracketKeyword_5()); }
	'['
	{ after(grammarAccess.getAttributeAccess().getLeftSquareBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__6__Impl
	rule__Attribute__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getLowerBoundAssignment_6()); }
	(rule__Attribute__LowerBoundAssignment_6)
	{ after(grammarAccess.getAttributeAccess().getLowerBoundAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__7__Impl
	rule__Attribute__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getFullStopFullStopKeyword_7()); }
	'..'
	{ after(grammarAccess.getAttributeAccess().getFullStopFullStopKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__8__Impl
	rule__Attribute__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getUpperBoundAssignment_8()); }
	(rule__Attribute__UpperBoundAssignment_8)
	{ after(grammarAccess.getAttributeAccess().getUpperBoundAssignment_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__9__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getRightSquareBracketKeyword_9()); }
	']'
	{ after(grammarAccess.getAttributeAccess().getRightSquareBracketKeyword_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StringType__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringType__Group__0__Impl
	rule__StringType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StringType__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringTypeAccess().getStringTypeAction_0()); }
	()
	{ after(grammarAccess.getStringTypeAccess().getStringTypeAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringType__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StringType__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StringType__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStringTypeAccess().getStringKeyword_1()); }
	'string'
	{ after(grammarAccess.getStringTypeAccess().getStringKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IntegerType__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IntegerType__Group__0__Impl
	rule__IntegerType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IntegerType__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIntegerTypeAccess().getIntegerTypeAction_0()); }
	()
	{ after(grammarAccess.getIntegerTypeAccess().getIntegerTypeAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IntegerType__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IntegerType__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IntegerType__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIntegerTypeAccess().getIntegerKeyword_1()); }
	'integer'
	{ after(grammarAccess.getIntegerTypeAccess().getIntegerKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassModel__ContentAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassModelAccess().getContentContentParserRuleCall_0()); }
		ruleContent
		{ after(grammarAccess.getClassModelAccess().getContentContentParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConstantAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getConstantAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Constant__InitialAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConstantAccess().getInitialValueParserRuleCall_4_0()); }
		ruleValue
		{ after(grammarAccess.getConstantAccess().getInitialValueParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAssociationAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getAssociationAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__SourceAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAssociationAccess().getSourceClassCrossReference_3_0()); }
		(
			{ before(grammarAccess.getAssociationAccess().getSourceClassIDTerminalRuleCall_3_0_1()); }
			RULE_ID
			{ after(grammarAccess.getAssociationAccess().getSourceClassIDTerminalRuleCall_3_0_1()); }
		)
		{ after(grammarAccess.getAssociationAccess().getSourceClassCrossReference_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__TargetAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAssociationAccess().getTargetClassCrossReference_5_0()); }
		(
			{ before(grammarAccess.getAssociationAccess().getTargetClassIDTerminalRuleCall_5_0_1()); }
			RULE_ID
			{ after(grammarAccess.getAssociationAccess().getTargetClassIDTerminalRuleCall_5_0_1()); }
		)
		{ after(grammarAccess.getAssociationAccess().getTargetClassCrossReference_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__LowerBoundAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAssociationAccess().getLowerBoundValueParserRuleCall_7_0()); }
		ruleValue
		{ after(grammarAccess.getAssociationAccess().getLowerBoundValueParserRuleCall_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Association__UpperBoundAssignment_9
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAssociationAccess().getUpperBoundValueParserRuleCall_9_0()); }
		ruleValue
		{ after(grammarAccess.getAssociationAccess().getUpperBoundValueParserRuleCall_9_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getClassAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__SubClassesAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getSubClassesClassParserRuleCall_4_0()); }
		ruleClass
		{ after(grammarAccess.getClassAccess().getSubClassesClassParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__AttributesAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getAttributesAttributeParserRuleCall_5_0()); }
		ruleAttribute
		{ after(grammarAccess.getClassAccess().getAttributesAttributeParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__VisibilityAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getVisibilityVisibilityEnumRuleCall_1_0()); }
		ruleVisibility
		{ after(grammarAccess.getAttributeAccess().getVisibilityVisibilityEnumRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__TypeAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getTypeTypeParserRuleCall_4_0()); }
		ruleType
		{ after(grammarAccess.getAttributeAccess().getTypeTypeParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__LowerBoundAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getLowerBoundValueParserRuleCall_6_0()); }
		ruleValue
		{ after(grammarAccess.getAttributeAccess().getLowerBoundValueParserRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__UpperBoundAssignment_8
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getUpperBoundValueParserRuleCall_8_0()); }
		ruleValue
		{ after(grammarAccess.getAttributeAccess().getUpperBoundValueParserRuleCall_8_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassRef__TargetAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassRefAccess().getTargetClassCrossReference_0()); }
		(
			{ before(grammarAccess.getClassRefAccess().getTargetClassIDTerminalRuleCall_0_1()); }
			RULE_ID
			{ after(grammarAccess.getClassRefAccess().getTargetClassIDTerminalRuleCall_0_1()); }
		)
		{ after(grammarAccess.getClassRefAccess().getTargetClassCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IntegerLiteral__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIntegerLiteralAccess().getValueINTTerminalRuleCall_0()); }
		RULE_INT
		{ after(grammarAccess.getIntegerLiteralAccess().getValueINTTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstantRef__TargetAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConstantRefAccess().getTargetConstantCrossReference_0()); }
		(
			{ before(grammarAccess.getConstantRefAccess().getTargetConstantIDTerminalRuleCall_0_1()); }
			RULE_ID
			{ after(grammarAccess.getConstantRefAccess().getTargetConstantIDTerminalRuleCall_0_1()); }
		)
		{ after(grammarAccess.getConstantRefAccess().getTargetConstantCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__DescriptionAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getDescriptionDESCRIPTION_TEXTTerminalRuleCall_0()); }
		RULE_DESCRIPTION_TEXT
		{ after(grammarAccess.getDescriptionAccess().getDescriptionDESCRIPTION_TEXTTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_DESCRIPTION_TEXT : '[[[' ( options {greedy=false;} : . )*']]]';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
